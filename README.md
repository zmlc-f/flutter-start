# flutter

flutter 学习之路

### 安装、编辑器配置

[参考文档](https://flutterchina.club/get-started/install/)

遇到问题：--

### 基础

#### widget 介绍

[widget 目录参考](https://flutterchina.club/widgets/)

- widget 的主要工作是实现一个 build 函数，用以构建自身
- widget 分为无状态的 StatelessWidget 和有状态的 StatefulWidget，无状态 widget 从它们的父 widget 接收参数，它们被存储在 final 型的成员变量中
- 在 Flutter 中，事件流是“向上”传递的，而状态流是“向下”传递的

##### 基础 widget

- Text：带格式的文本
- Row、Column：弹性布局，Row-水平方向，Column-垂直方向
- Stack：绝对定位
- Container：矩形元素

##### Material 组件

- MaterialApp：在应用程序的根部创建了一些有用的 widget，例如 Navigator（管理页面路由栈），是否使用 MaterialApp 完全是可选的
- Scaffold：布局组件

##### 手式

- GestureDetector：检测各种输入手势，包括点击、拖动和缩放

##### 响应 widget 生命周期事件

- 在 StatefulWidget 调用 createState 之后，框架将新的状态对象插入树中，然后调用状态对象的 initState，当一个状态对象不再需要时，框架调用状态对象的 dispose。

##### Key、GlobalKey

- 全局 key 在整个 widget 层次结构中必须是全局唯一的，局部 key 只需要在同级中唯一

#### 布局
