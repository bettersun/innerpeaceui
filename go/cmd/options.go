package main

import (
	"github.com/bettersun/innerpeace/channel"
	"github.com/go-flutter-desktop/go-flutter"
)

var options = []flutter.Option{
	flutter.WindowInitialDimensions(1200, 720),

	// 添加插件
	flutter.AddPlugin(channel.HelloPlugin{}),
}
