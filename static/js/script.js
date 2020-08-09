$(function () {
  var data = {
    //折线图需要为每个数据点设置一标签。这是显示在X轴上。
    labels: ["周一", "周二", "周三", "周四", "周五", "周六", "周天"],
    //数据集（y轴数据范围随数据集合中的data中的最大或最小数据而动态改变的）
    datasets: [
      {
        label: "昨日",
        backgroundColor: "rgba(255, 255, 255, 0)", //背景填充色
        borderColor: "#337ab7", //路径颜色
        pointBackgroundColor: "#337ab7", //数据点颜色
        pointBorderColor: "#337ab7", //数据点边框颜色
        data: [1, 2, 3, 4, 5, 5, 6], //对应的值
      },
      {
        label: "今日",
        backgroundColor: "rgba(255,255,255, 0)", //背景填充色
        borderColor: "#c1e2b3", //路径颜色
        pointBackgroundColor: "#c1e2b3", //数据点颜色
        pointBorderColor: "#c1e2b3", //数据点边框颜色
        data: [2, 2, 1, 4, 2, 4, 5], //对应的值
      },
    ],
  };
  var ctx = document.getElementById("canvas").getContext("2d");
  var myLineChart = new Chart(ctx, {
    type: "line",
    data: data,
    options: {
      title: {
        display: false,
        text: "老罗791", //标题
      },
    },
  });
});
