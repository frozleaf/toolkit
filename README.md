# tookit

### 1. 介绍
> 在Rolan2基础上，增加插件

- [dotNetFx4.5.2-x86-x64.exe](https://download.fastgit.org/frozleaf/toolkit-apps/releases/download/v1.0.0/dotNetFx4.5.2-x86-x64.exe)
- [toolkit archive](https://archive.fastgit.org/frozleaf/toolkit/archive/refs/heads/master.zip)

### 2. 常见问题
#### 2.1 启动时程序崩溃
> 将plugins文件夹中的所有文件，通过文件属性，去除锁定

### 3. Rolan2 修改历史

#### 3.1 空白右键
- 增加菜单，新建项目(AppLoader)
- 增加菜单，打开安装目录
- 增加菜单，更新图标(AppLoader)

#### 3.2 应用右键
- 删除菜单，打开方式(原菜单)
- 删除菜单，打开文件所在位置(原菜单)
- 增加菜单，添加到系统右键菜单(文件)
- 增加菜单，添加到系统右键菜单(文件夹)
- 增加菜单，删除系统右键菜单
- 增加菜单，打开文件所在位置(新菜单)
- 增加菜单，复制文件路径
- 增加菜单，在此处运行命令行
- 增加菜单，清除文件数据
- 增加菜单，绑定扩展名

#### 3.3 搜索右键
- 增加菜单，添加到系统右键菜单(文件)
- 增加菜单，添加到系统右键菜单(文件夹)
- 增加菜单，删除系统右键菜单
- 增加菜单，在此处运行命令行
- 增加菜单，打开文件所在位置
- 增加菜单，复制文件路径
- 增加菜单，清除文件数据
- 增加菜单，编辑项目信息
- 增加菜单，删除
- 增加菜单，绑定扩展名

#### 3.4 其他功能
- 支持使用AppLoader.exe下载、运行程序
- 支持运行app时更新图标



### 4. Rolan2 Code

#### 4.1 文件

```c#
// List<GClass63>转json，再进行压缩的结果
Data
// 与Data文件内容格式一样，数据是运行状态数据，比Data要新一点
Session
// 设置信息
Settings
// app图片缓存文件，结构：{"app1路径 app1参数":{"b":"app1图标base64编码"}}
Cache
```

#### 4.2 类型

```c#
// 主界面TabControl类型，用于提供分组功能
YCWdIsEdMUdIuArTWSMyNBzZxrjLA
// 主界面TabControl中的TabItem类型，提供每个组的内容
ukTlFZuuADnpYCWLPVxSJMaamrKR
// 主界面TabItem中的ListBox类型，提供组内容每个app的容器
zCDFXRffUCWvBRhtKOzSOnutWqeoA
// 编辑界面，单个app编辑或新增类型
bzhhpqxcfcjlmawflgtsyiydpwnqa.xaml
nkMbKYpqVVDOnbvlHcBHEOlGnmYHB
// 主界面，组类型，包含组名称(Title)和组内容app列表(Data)
GClass63
// 主界面，app类型，包含名称(Name)、文件路径(TargetPath)、启动参数(Arguments)、运行次数(Count)等
GClass64
// 搜索界面，app类型，包含名称(Name)、文件路径(String_0)、启动参数(Arguments)、组名称(Description)
GClass50
// 搜索界面，搜索的所有app列表 ObservableCollection<GClass50>
GClass51.observableCollection_0
    
    
// application对象
qgzfFnjwWrHKZvINJXvPtWiXRfTvA
// 主界面对象
var main = qgzfFnjwWrHKZvINJXvPtWiXRfTvA.orpNRyTBJACbBiFPxlMaaLWaMnTaA_0;
// 主界面中TabControl对象
var tabControl = main.ycwdIsEdMUdIuArTWSMyNBzZxrjLA_0;
// 当前选择的TabItem对象
var tabItem = (ukTlFZuuADnpYCWLPVxSJMaamrKR)tabControl.SelectedItem;
var groupName = tabItem.textBlock_0.Text; // 组名
// ListBox对象
var listBox = ((zCDFXRffUCWvBRhtKOzSOnutWqeoA)tabItem.Content);
// app列表对象
var appList = listBox.gclass65_0.Items;
```

#### 4.3 功能

##### 4.3.1 生成List<GClass63>

```c#
List<GClass63> list = new List<GClass63>();
// 遍历每个TabItem，即每个组
foreach (var obj in qgzfFnjwWrHKZvINJXvPtWiXRfTvA.orpNRyTBJACbBiFPxlMaaLWaMnTaA_0.ycwdIsEdMUdIuArTWSMyNBzZxrjLA_0.Items)
{
    ukTlFZuuADnpYCWLPVxSJMaamrKR ukTlFZuuADnpYCWLPVxSJMaamrKR = (ukTlFZuuADnpYCWLPVxSJMaamrKR)obj;
    // 组对象
    GClass63 gclass = new GClass63
    {
        Title = ukTlFZuuADnpYCWLPVxSJMaamrKR.textBlock_0.Text,
        Type = ukTlFZuuADnpYCWLPVxSJMaamrKR.int_0
    };
    if (ukTlFZuuADnpYCWLPVxSJMaamrKR.int_0 == 1)
    {
        // 组内所有app列表
        gclass.Data = new List<GClass64>(((zCDFXRffUCWvBRhtKOzSOnutWqeoA)ukTlFZuuADnpYCWLPVxSJMaamrKR.Content).gclass65_0.Items);
    }
    else if (ukTlFZuuADnpYCWLPVxSJMaamrKR.int_0 == 2)
    {
        gclass.Directory = ukTlFZuuADnpYCWLPVxSJMaamrKR.string_0;
    }
    list.Add(gclass);
}
```

##### 4.3.2 获取所有app

```c#
// 主界面
var main = qgzfFnjwWrHKZvINJXvPtWiXRfTvA.orpNRyTBJACbBiFPxlMaaLWaMnTaA_0;
// TabControl
var tabControl = main.ycwdIsEdMUdIuArTWSMyNBzZxrjLA_0;
foreach (object obj in tabControl.Items)
{
	// TabItem
	var tabItem = (ukTlFZuuADnpYCWLPVxSJMaamrKR)obj;
	// 组名
	var groupName = tabItem.textBlock_0.Text; 
	// ListBox
	var listBox = ((zCDFXRffUCWvBRhtKOzSOnutWqeoA)tabItem.Content);
	// app列表
	var appList = listBox.gclass65_0.Items;
	foreach (GClass64 gclass2 in appList)
	{
		Console.WriteLine(gclass2.TargetPath + "" + gclass2.Arguments)
	}
}
```


##### 4.3.3 获取当前页app

```c#
// 主界面
var main = qgzfFnjwWrHKZvINJXvPtWiXRfTvA.orpNRyTBJACbBiFPxlMaaLWaMnTaA_0;
// TabControl
var tabControl = main.ycwdIsEdMUdIuArTWSMyNBzZxrjLA_0;
foreach (object obj in tabControl.Items)
{
	// TabItem
	var tabItem = (ukTlFZuuADnpYCWLPVxSJMaamrKR)obj;
	// 过滤非选中组
	if(tabItem != tabControl.SelectedItem)
		continue;
	// 组名
	var groupName = tabItem.textBlock_0.Text; 
	// ListBox
	var listBox = ((zCDFXRffUCWvBRhtKOzSOnutWqeoA)tabItem.Content);
	// app列表
	var appList = listBox.gclass65_0.Items;
	foreach (GClass64 gclass2 in appList)
	{
		Console.WriteLine(gclass2.TargetPath + "" + gclass2.Arguments)
	}
}
```


##### 4.3.4 搜索列表支持删除

```c#
private static void OnAppDeleteAppInfoMenuItemClicked(ListBox lb, object sender, RoutedEventArgs e)
{
	int selectedIndex = lb.SelectedIndex;
	GClass50 gclass = GClass51.observableCollection_0[selectedIndex];
	YCWdIsEdMUdIuArTWSMyNBzZxrjLA ycwdIsEdMUdIuArTWSMyNBzZxrjLA_ = qgzfFnjwWrHKZvINJXvPtWiXRfTvA.orpNRyTBJACbBiFPxlMaaLWaMnTaA_0.ycwdIsEdMUdIuArTWSMyNBzZxrjLA_0;
        // 每个tabitem
	foreach (object obj in ((IEnumerable)qgzfFnjwWrHKZvINJXvPtWiXRfTvA.orpNRyTBJACbBiFPxlMaaLWaMnTaA_0.ycwdIsEdMUdIuArTWSMyNBzZxrjLA_0.Items))
	{
		ukTlFZuuADnpYCWLPVxSJMaamrKR ukTlFZuuADnpYCWLPVxSJMaamrKR = (ukTlFZuuADnpYCWLPVxSJMaamrKR)obj;
		string text = ukTlFZuuADnpYCWLPVxSJMaamrKR.textBlock_0.Text;
		int num = 0;
		bool flag = false;
                // 每个app对象
		foreach (GClass64 gclass2 in ((zCDFXRffUCWvBRhtKOzSOnutWqeoA)ukTlFZuuADnpYCWLPVxSJMaamrKR.Content).gclass65_0.Items)
		{
			if (gclass.String_0 == gclass2.TargetPath && gclass.Arguments == gclass2.Arguments && gclass.Description == text)
			{
				flag = true;
				break;
			}
			num++;
		}
		if (flag)
		{
                        // 删除tabitem中的数据
			((zCDFXRffUCWvBRhtKOzSOnutWqeoA)ukTlFZuuADnpYCWLPVxSJMaamrKR.Content).gclass65_0.Items.RemoveAt(num);
                        // 删除搜索列表中的数据
			GClass51.observableCollection_0.RemoveAt(selectedIndex);
                        // 更新到Data文件
			RolanRightMenuInitializer.UpdateDataFile();
			break;
		}
	}
}

```
