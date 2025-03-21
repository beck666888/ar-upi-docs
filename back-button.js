// 在页面加载完成后执行
document.addEventListener('DOMContentLoaded', function() {
    // 创建返回按钮元素
    var backButton = document.createElement('button');
    backButton.className = 'back-button';
    backButton.innerHTML = '←';
    backButton.title = '返回导航页';
    
    // 添加点击事件：返回导航页
    backButton.addEventListener('click', function() {
        window.location.href = 'ar_upi_docs_index.html';
    });
    
    // 将按钮添加到页面中
    document.body.appendChild(backButton);
}); 