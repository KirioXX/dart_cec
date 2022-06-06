package main

import (
	"errors"
	"fmt"

	"github.com/chbmuc/cec"
)

var hdmi *cec.Connection
var hdmiPort = 0

//export init
func init() {
	var err error

	hdmi, err = cec.Open("", "cec.go")
	if err != nil {
		fmt.Println(err)
	}
}

//export SetPort
func SetPort(port int) {
	hdmiPort = port
}

//export GetDeviceInfo
func GetDeviceInfo(port int) cec.Device {
	devices := GetActiveDeviceList()

	for _, device := range devices {
		if device.LogicalAddress == port {
			return device
		}
	}

	return cec.Device{}
}

//export GetActiveDeviceList
func GetActiveDeviceList() map[string]cec.Device {
	return hdmi.List()
}

//export GetPowerStatus
func GetPowerStatus() string {
	return hdmi.GetDevicePowerStatus(hdmiPort)
}

//export Power
func Power(state string) error {
	switch state {
	case "on":
		return hdmi.PowerOn(hdmiPort)
	case "off":
		return hdmi.Standby(hdmiPort)
	default:
		return errors.New("Invalid power state given.")
	}
}

//export SetVolume
func SetVolume(state string) error {
	switch state {
	case "up":
		return hdmi.VolumeUp()
	case "down":
		return hdmi.VolumeDown()
	case "mute":
		return hdmi.Mute()
	default:
		return errors.New("Invalid volume state given.")
	}
}

// Unused
func main() {}
