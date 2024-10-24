<h2 style="text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_csdnlink cke_widget_wrapper_link-info"
    data-cke-display-name="a"
    data-cke-widget-id="104"
    role="region"
    aria-label="a 小部件"
    ><a
      class="link-info cke_widget_editable cke_widget_element"
      href="https://github.com/483170596/HardwareDesign16"
      title="FPGA、VHDL 基于RISC-V格式的16位位缩模型机设计"
      data-cke-widget-keep-attr="0"
      data-widget="csdnlink"
      contenteditable="true"
      data-cke-widget-editable="text"
      data-cke-enter-mode="2"
      data-cke-widget-data="%7B%22url%22%3A%22https%3A%2F%2Fgithub.com%2F483170596%2FHardwareDesign16%22%2C%22text%22%3A%22FPGA%E3%80%81VHDL%20%E5%9F%BA%E4%BA%8ERISC-V%E6%A0%BC%E5%BC%8F%E7%9A%8416%E4%BD%8D%E4%BD%8D%E7%BC%A9%E6%A8%A1%E5%9E%8B%E6%9C%BA%E8%AE%BE%E8%AE%A1%22%2C%22desc%22%3A%22%22%2C%22icon%22%3A%22%22%2C%22isCard%22%3Afalse%2C%22hasResquest%22%3Atrue%2C%22iconDefault%22%3A%22https%3A%2F%2Fcsdnimg.cn%2Frelease%2Fblog_editor_html%2Frelease2.3.7%2Fckeditor%2Fplugins%2FCsdnLink%2Ficons%2Ficon-default.png%3Ft%3DO83A%22%2C%22id%22%3A%22PAInIu-1729766885775%22%2C%22classes%22%3A%7B%22link-info%22%3A1%7D%7D"
      data-link-icon="https://csdnimg.cn/release/blog_editor_html/release2.3.7/ckeditor/plugins/CsdnLink/icons/icon-default.png?t=O83A"
      data-link-title="FPGA、VHDL 基于RISC-V格式的16位位缩模型机设计"
      >FPGA、VHDL 基于RISC-V格式的16位位缩模型机设计</a
    ></span
  >
</h2>
<ul>
  <li style="text-align: justify"><h2>设计目的</h2></li>
</ul>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  实现基于RISC-V格式的16位MCU设计，参考RISC-V的基本格式，进行位数缩减。实现RISC-V中寄存器加法add，立即数加法addi，半字加载lh，半字存储sh，不等条件跳转bne，相等条件跳转beq，无条件跳转链接jal。实现立即寻址、寄存器寻址、基址寻址、相对寻址。通过测试程序测试内存读取、加法运算、分支跳转的实现。
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <br />
</p>
<ul>
  <li style="text-align: justify"><h2>设计过程</h2></li>
</ul>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >首先确定模型机位数，确定指令格式与寻址方式。指令格式由RISC-V基本格式做位数缩减得到。寻址方式有立即数寻址、寄存器寻址、基址寻址、相对寻址。其次确定指令集与测试程序。然后画出微程序流程图，得到控制状态机。之后完善各部分器件原理图或代码，最后通过测试程序测试模型机功能。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >模型机位数选定为16位，采用单总线结构。模型机设计包括：16位4片寄存器堆REG、单端口运算器ALU、读取存储器RAM、程序计数器PC、控制器CTL、时序产生单元STEP。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="100"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/dd613d9201e84bd180021a1ef58fd533.png"
      src="https://i-blog.csdnimg.cn/direct/dd613d9201e84bd180021a1ef58fd533.png"
      width="831"
      height="229"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Fdd613d9201e84bd180021a1ef58fd533.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22831%22%2C%22height%22%3A%22229%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
    ></span
  ><br />
</p>
<h3 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <a data-cke-saved-name="_Toc4097" name="_Toc4097"></a>2.1指令集设计
</h3>
<h4 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <span style="color: #000000">指令格式：</span>
</h4>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">基于RISC-V基本格式，位数缩减至16位。</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
  表 1指令格式
</p>
<table align="center" border="1" cellspacing="0" style="width: 100%">
  <tbody>
    <tr>
      <td style="vertical-align: center; width: 10.66%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          指令格式类型
        </p>
      </td>
      <td style="vertical-align: center; width: 5.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          15
        </p>
      </td>
      <td style="vertical-align: center; width: 5.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          14
        </p>
      </td>
      <td style="vertical-align: center; width: 5.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          13
        </p>
      </td>
      <td style="vertical-align: center; width: 5.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          12
        </p>
      </td>
      <td style="vertical-align: center; width: 5.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          11
        </p>
      </td>
      <td style="vertical-align: center; width: 5.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          10
        </p>
      </td>
      <td style="vertical-align: center; width: 3.78%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          9
        </p>
      </td>
      <td style="vertical-align: center; width: 3.78%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          8
        </p>
      </td>
      <td style="vertical-align: center; width: 3.78%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          7
        </p>
      </td>
      <td style="vertical-align: center; width: 3.78%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          6
        </p>
      </td>
      <td style="vertical-align: center; width: 3.78%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          5
        </p>
      </td>
      <td style="vertical-align: center; width: 5.84%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          4
        </p>
      </td>
      <td style="vertical-align: center; width: 5.84%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          3
        </p>
      </td>
      <td style="vertical-align: center; width: 3.78%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          2
        </p>
      </td>
      <td style="vertical-align: center; width: 3.78%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
      <td style="vertical-align: center; width: 3.78%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 17.08%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          指令类型
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 10.66%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          R型
        </p>
      </td>
      <td colspan="4" style="vertical-align: center; width: 20.12%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct4
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 10.06%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs2
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 7.58%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 11.7%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rd
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
      <td style="vertical-align: center; width: 17.08%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          运算指令
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 10.66%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          I型
        </p>
      </td>
      <td colspan="6" style="vertical-align: center; width: 30.2%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[5:0]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 7.58%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 11.7%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rd
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
      <td style="vertical-align: center; width: 17.08%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          装数/立
        </p>
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          即数运算
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 10.66%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          S型
        </p>
      </td>
      <td colspan="4" style="vertical-align: center; width: 20.12%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[5:2]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 10.06%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs2
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 7.58%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 11.7%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[1:0]
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
      <td style="vertical-align: center; width: 17.08%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          存数指令
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 10.66%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          B型
        </p>
      </td>
      <td colspan="4" style="vertical-align: center; width: 20.12%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[5:2]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 10.06%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs2
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 7.58%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 11.7%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[1:0]
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
      <td style="vertical-align: center; width: 17.08%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          条件分
        </p>
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          支指令
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 10.66%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          J型
        </p>
      </td>
      <td colspan="11" style="vertical-align: center; width: 49.14%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[10:0]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 11.7%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rd
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 11.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
      <td style="vertical-align: center; width: 17.08%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          无条件
        </p>
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          跳转指令
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <br />
</p>
<h4 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <span style="color: #000000">指令集：</span>
</h4>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">ADD</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">助记符：add rd,rs1,rs2</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >功能：R[rd] = R[rs1] + R[rs2]，把寄存器 R[rs2] 加寄存器 R[rs1]，结果写入
    R[rd]。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">指令：</span>
</p>
<table border="1" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="4" style="vertical-align: center; width: 106.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct4
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53.2pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs2
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53.3pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.95pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53.3pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rd
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.95pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">ADDI</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">助记符：addi rd, rs1, immediate</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >功能：R[rd] = R[rs1] + sext(immediate)，把符号位扩展的立即数加到寄存器
    R[rs1]上，结果写入 R[rd]。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">指令：</span>
</p>
<table border="1" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="6" style="vertical-align: center; width: 159.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[5:0]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53.3pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.95pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53.3pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rd
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.95pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">LH</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">助记符：lh rd,offset(rs1)</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >功能：R[rd] = sext(M[R[rs1] + sext(offset)][15:0])，半字加载，从地址 R[rs1]
    + sign-extend(offset)读取16位数据，写入R[rd]</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">指令：</span>
</p>
<table border="1" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="6" style="vertical-align: center; width: 159.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[5:0]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53.3pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.95pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53.3pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rd
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.95pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">SH</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">助记符：sh rs2, offset(rs1) </span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >功能：M[R[rs1] + sext(offset) = R[rs2][15: 0]，将
    R[rs2]的16位数据存入内存地址 R[rs1]+sign-extend(offset)。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">指令：</span>
</p>
<table border="1" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="4" style="vertical-align: center; width: 105.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[5:2]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 52.85pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs2
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 55.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[1:0]
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.45pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 27.75pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 27.75pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">BNE</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">助记符：bne rs1, rs2, offset </span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >功能：if (rs1 ≠ rs2) pc += sext(offset)，若寄存器 R[rs1]和寄存器
    R[rs2]的值不相等，把 pc 的值设为当前值加上符号位扩展的偏移 offset。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">指令：</span>
</p>
<table border="1" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="4" style="vertical-align: center; width: 105.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[5:2]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 52.85pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs2
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 55.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[1:0]
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.45pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 27.75pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 27.75pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">BEQ</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">助记符：beq rs1, rs2, offset</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >功能：if (rs1 = rs2) pc += sext(offset)，若寄存器 R[rs1]和寄存器
    R[rs2]的值相等，把 pc 的值设为当前值加上符号位扩展的偏移 offset。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">指令：</span>
</p>
<table border="1" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="4" style="vertical-align: center; width: 105.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[5:2]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 52.85pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs2
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rs1
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          funct3
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 55.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[1:0]
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.4pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.45pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
      <td style="vertical-align: center; width: 27.75pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 27.75pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
      <td style="vertical-align: center; width: 26.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">JAL</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">助记符：jal rd, offset</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >功能：R[rd] = pc+1; pc +=
    sext(offset)，把下一条指令的地址(pc+1)保存到目的寄存器，然后把 pc
    设置为当前值加上符号位扩展的offset。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">指令：</span>
</p>
<table border="1" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="11" style="vertical-align: center; width: 292.85pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          imm[10:0]
        </p>
      </td>
      <td colspan="2" style="vertical-align: center; width: 53.3pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          rd
        </p>
      </td>
      <td colspan="3" style="vertical-align: center; width: 79.95pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          opcode
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.6pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          1
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
      <td style="vertical-align: center; width: 26.65pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          0
        </p>
      </td>
    </tr>
  </tbody>
</table>
<h3 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  2.2 模块设计
</h3>
<h4 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  2.2.1寄存器堆
</h4>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">16位D触发器dff1代码：</span>
</p>
<div
  tabindex="-1"
  contenteditable="false"
  data-cke-widget-wrapper="1"
  data-cke-filter="off"
  class="cke_widget_wrapper cke_widget_block cke_widget_codeSnippet"
  data-cke-display-name="代码段"
  data-cke-widget-id="99"
  role="region"
  aria-label="代码段 小部件"
>
  <pre
    data-cke-widget-keep-attr="0"
    data-widget="codeSnippet"
    class="cke_widget_element"
    data-cke-widget-data="%7B%22classes%22%3Anull%2C%22lang%22%3Anull%2C%22code%22%3A%22library%C2%A0ieee%3B%5Cnuse%C2%A0ieee.std_logic_1164.all%3B%5Cnentity%C2%A0dff1%C2%A0is%5Cn%C2%A0%C2%A0%C2%A0%C2%A0port%C2%A0(%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0clk%C2%A0%3A%C2%A0in%C2%A0std_logic%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0d%C2%A0%3A%C2%A0in%C2%A0STD_LOGIC_VECTOR(15%C2%A0downto%C2%A00)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0q%C2%A0%3A%C2%A0out%C2%A0STD_LOGIC_VECTOR(15%C2%A0downto%C2%A00)%5Cn%C2%A0%C2%A0%C2%A0%C2%A0)%3B%5Cnend%C2%A0entity%C2%A0dff1%3B%5Cnarchitecture%C2%A0bhv%C2%A0of%C2%A0dff1%C2%A0is%5Cn%C2%A0%C2%A0%C2%A0%C2%A0signal%C2%A0q1%C2%A0%3A%C2%A0std_logic_vector(15%C2%A0downto%C2%A00)%3B%5Cnbegin%5Cn%C2%A0%C2%A0%C2%A0%C2%A0process%C2%A0(clk%2Cq1)%5Cn%C2%A0%C2%A0%C2%A0%C2%A0begin%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0clk'EVENT%C2%A0AND%C2%A0clk%C2%A0%3D%C2%A0'1'%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0then%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0q1%C2%A0%3C%3D%C2%A0d%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0process%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0q%C2%A0%3C%3D%C2%A0q1%3B%5Cnend%C2%A0architecture%C2%A0bhv%3B%22%7D"
  ><code class="hljs hljs">library&nbsp;ieee;
use&nbsp;ieee.std_logic_1164.all;
entity&nbsp;dff1&nbsp;is
&nbsp;&nbsp;&nbsp;&nbsp;port&nbsp;(
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;clk&nbsp;:&nbsp;in&nbsp;std_logic;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d&nbsp;:&nbsp;in&nbsp;STD_LOGIC_VECTOR(15&nbsp;downto&nbsp;0);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q&nbsp;:&nbsp;out&nbsp;STD_LOGIC_VECTOR(15&nbsp;downto&nbsp;0)
&nbsp;&nbsp;&nbsp;&nbsp;);
end&nbsp;entity&nbsp;dff1;
architecture&nbsp;bhv&nbsp;of&nbsp;dff1&nbsp;is
&nbsp;&nbsp;&nbsp;&nbsp;signal&nbsp;q1&nbsp;:&nbsp;std_logic_vector(15&nbsp;downto&nbsp;0);
begin
&nbsp;&nbsp;&nbsp;&nbsp;process&nbsp;(clk,q1)
&nbsp;&nbsp;&nbsp;&nbsp;begin
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;clk'EVENT&nbsp;AND&nbsp;clk&nbsp;=&nbsp;'1'
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;then
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q1&nbsp;&lt;=&nbsp;d;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;process;
&nbsp;&nbsp;&nbsp;&nbsp;q&nbsp;&lt;=&nbsp;q1;
end&nbsp;architecture&nbsp;bhv;</code></pre>
  <span
    class="cke_reset cke_widget_drag_handler_container"
    style="
      background: url('https://csdnimg.cn/release/blog_editor_html/release2.3.7/ckeditor/plugins/widget/images/handle.png')
        rgba(220, 220, 220, 0.5);
      top: 0px;
      left: 0px;
    "
    ><img
      class="cke_reset cke_widget_drag_handler"
      data-cke-widget-drag-handler="1"
      src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw=="
      width="15"
      title="点击并拖拽以移动"
      height="15"
      role="presentation"
  /></span>
</div>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">dff1仿真：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="98"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/a39165b83dc14b549941eafb002ea7ad.png"
      src="https://i-blog.csdnimg.cn/direct/a39165b83dc14b549941eafb002ea7ad.png"
      width="830"
      height="438"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Fa39165b83dc14b549941eafb002ea7ad.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22830%22%2C%22height%22%3A%22438%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">clk上升沿时，将输入端d[15..0]存入其中。</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">寄存器堆设计图：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >由4个D触发器dff1组成，4个LD_REG作写选通，2位SEL[1..0]和REG_B作写总线控制。</span
  >
</p>
<span style="color: #000000"></span>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="97"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/30e7880d218b4504981eefb9b3f8dc9e.png"
      src="https://i-blog.csdnimg.cn/direct/30e7880d218b4504981eefb9b3f8dc9e.png"
      width="831"
      height="277"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F30e7880d218b4504981eefb9b3f8dc9e.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22831%22%2C%22height%22%3A%22277%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">寄存器堆REG仿真：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">先读R0，输出0000；同时写R1=FFFF。</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">然后读R1，输出FFFF。</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="96"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/8412bde8db764a2396a2ef13840792a3.png"
      src="https://i-blog.csdnimg.cn/direct/8412bde8db764a2396a2ef13840792a3.png"
      width="829"
      height="228"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F8412bde8db764a2396a2ef13840792a3.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22829%22%2C%22height%22%3A%22228%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<h4 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  2.2.2 运算器模块
</h4>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">ALU181代码：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >S=1001，进行加法运算；S=0110，进行减法运算；S=0000，不做操作。FZ为零标志。</span
  >
</p>
<div
  tabindex="-1"
  contenteditable="false"
  data-cke-widget-wrapper="1"
  data-cke-filter="off"
  class="cke_widget_wrapper cke_widget_block cke_widget_codeSnippet"
  data-cke-display-name="代码段"
  data-cke-widget-id="95"
  role="region"
  aria-label="代码段 小部件"
>
  <pre
    data-cke-widget-keep-attr="0"
    data-widget="codeSnippet"
    class="cke_widget_element"
    data-cke-widget-data="%7B%22classes%22%3Anull%2C%22lang%22%3Anull%2C%22code%22%3A%22LIBRARY%C2%A0IEEE%3B%5CnUSE%C2%A0IEEE.STD_LOGIC_1164.ALL%3B%5CnUSE%C2%A0IEEE.STD_LOGIC_UNSIGNED.ALL%3B%5CnENTITY%C2%A0ALU181%C2%A0IS%5CnPORT%C2%A0(%C2%A0%5CnS%C2%A0%C2%A0%3A%C2%A0IN%C2%A0%C2%A0STD_LOGIC_VECTOR(3%C2%A0DOWNTO%C2%A00%C2%A0)%3B%5CnA%2CB%C2%A0%C2%A0%3A%C2%A0IN%C2%A0%C2%A0STD_LOGIC_VECTOR(15%C2%A0DOWNTO%C2%A00)%3B%5CnF%C2%A0%C2%A0%3A%C2%A0OUT%C2%A0STD_LOGIC_VECTOR(15%C2%A0DOWNTO%C2%A00)%3B%5CnCOUT%C2%A0%3A%C2%A0OUT%C2%A0STD_LOGIC_VECTOR(3%C2%A0DOWNTO%C2%A00)%3B%5CnM%2CCN%C2%A0%C2%A0%3A%C2%A0IN%C2%A0%C2%A0STD_LOGIC%3B%5CnCO%2CFZ%C2%A0%3A%C2%A0OUT%C2%A0STD_LOGIC%5Cn)%3B%5CnEND%C2%A0ALU181%3B%5CnARCHITECTURE%C2%A0behav%C2%A0OF%C2%A0ALU181%C2%A0IS%5CnSIGNAL%C2%A0A9%2CB9%2CF9%C2%A0%3A%C2%A0STD_LOGIC_VECTOR(16%C2%A0DOWNTO%C2%A00)%3B%5CnBEGIN%5CnA9%C2%A0%3C%3D%C2%A0'0'%C2%A0%26%C2%A0A%C2%A0%3B%C2%A0%C2%A0B9%C2%A0%3C%3D%C2%A0'0'%C2%A0%26%C2%A0B%C2%A0%3B%5CnPROCESS(M%2CCN%2CA9%2CB9)%5CnBEGIN%5CnCASE%C2%A0S%C2%A0%C2%A0IS%5CnWHEN%C2%A0%5C%220000%5C%22%C2%A0%3D%3ENULL%3B%5CnWHEN%C2%A0%5C%220001%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D(A9%C2%A0OR%C2%A0B9)%2BCN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DNOT(A9%C2%A0OR%C2%A0B9)%3B%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%220010%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D(A9%C2%A0OR%C2%A0(NOT%C2%A0B9))%2BCN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3D(NOT%C2%A0A9)%C2%A0AND%C2%A0B9%3B%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%220011%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D%C2%A0%5C%2200000000000000000%5C%22-CN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3D%5C%2200000000000000000%5C%22%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%220100%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3DA9%2B(A9%C2%A0AND%C2%A0NOT%C2%A0B9)%2BCN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DNOT%C2%A0(A9%C2%A0AND%C2%A0B9)%3B%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%220101%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D(A9%C2%A0OR%C2%A0B9)%2B(A9%C2%A0AND%C2%A0NOT%C2%A0B9)%2BCN%3B%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DNOT%C2%A0B9%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%220110%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3DA9%C2%A0-B9%C2%A0-%C2%A0CN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DA9%C2%A0XOR%C2%A0B9%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%220111%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D(A9%C2%A0AND%C2%A0(NOT%C2%A0B9))-CN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DA9%C2%A0AND%C2%A0(NOT%C2%A0B9)%3B%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%221000%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3DA9%C2%A0%2B%C2%A0(A9%C2%A0AND%C2%A0B9)%2BCN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3D(NOT%C2%A0A9)%C2%A0OR%C2%A0B9%3B%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%221001%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3DA9%C2%A0%2B%C2%A0B9%C2%A0%2B%C2%A0CN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DNOT(A9%C2%A0XOR%C2%A0B9)%3B%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%221010%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D(A9%C2%A0OR%C2%A0(NOT%C2%A0B9))%2B(A9%C2%A0AND%C2%A0B9)%2BCN%3B%C2%A0ELSE%C2%A0F9%3C%3DB9%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%221011%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D(A9%C2%A0AND%C2%A0B9)-%C2%A0CN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DA9%C2%A0AND%C2%A0B9%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%221100%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3DA9%C2%A0%2B%C2%A0A9%C2%A0%2B%C2%A0CN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3D%C2%A0%5C%2200000000000000001%5C%22%3B%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%221101%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D(A9%C2%A0OR%C2%A0B9)%2BA9%C2%A0%2B%C2%A0CN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DA9%C2%A0OR%C2%A0(NOT%C2%A0B9)%3B%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%221110%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3D(A9%C2%A0OR(NOT%C2%A0B9))%2BA9%2BCN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DA9%C2%A0OR%C2%A0B9%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0%5C%221111%5C%22%C2%A0%3D%3EIF%C2%A0M%3D'0'%C2%A0THEN%C2%A0F9%3C%3DA9-CN%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0ELSE%C2%A0F9%3C%3DA9%3B%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5CnWHEN%C2%A0OTHERS%C2%A0%C2%A0%3D%3EF9%3C%3D%C2%A0%5C%2200000000000000000%5C%22%C2%A0%3B%5CnEND%C2%A0CASE%3B%5CnIF%C2%A0(F9%C2%A0%3D%C2%A0%5C%2200000000000000000%5C%22)%C2%A0THEN%C2%A0FZ%C2%A0%3C%3D%C2%A0'1'%3B%C2%A0ELSE%C2%A0FZ%C2%A0%3C%3D%C2%A0'0'%3B%C2%A0END%C2%A0IF%3B%5CnEND%C2%A0PROCESS%3B%5CnF%3C%3D%C2%A0F9(15%C2%A0DOWNTO%C2%A00)%3B%C2%A0%C2%A0%C2%A0CO%C2%A0%3C%3D%C2%A0F9(16)%3B%5CnCOUT%C2%A0%3C%3D%C2%A0%5C%220000%5C%22%C2%A0WHEN%C2%A0F9(16)%C2%A0%3D%C2%A0'0'%C2%A0%C2%A0%C2%A0ELSE%C2%A0%C2%A0%5C%220001%5C%22%C2%A0%3B%5CnEND%C2%A0behav%3B%22%7D"
  ><code class="hljs hljs">LIBRARY&nbsp;IEEE;
USE&nbsp;IEEE.STD_LOGIC_1164.ALL;
USE&nbsp;IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY&nbsp;ALU181&nbsp;IS
PORT&nbsp;(&nbsp;
S&nbsp;&nbsp;:&nbsp;IN&nbsp;&nbsp;STD_LOGIC_VECTOR(3&nbsp;DOWNTO&nbsp;0&nbsp;);
A,B&nbsp;&nbsp;:&nbsp;IN&nbsp;&nbsp;STD_LOGIC_VECTOR(15&nbsp;DOWNTO&nbsp;0);
F&nbsp;&nbsp;:&nbsp;OUT&nbsp;STD_LOGIC_VECTOR(15&nbsp;DOWNTO&nbsp;0);
COUT&nbsp;:&nbsp;OUT&nbsp;STD_LOGIC_VECTOR(3&nbsp;DOWNTO&nbsp;0);
M,CN&nbsp;&nbsp;:&nbsp;IN&nbsp;&nbsp;STD_LOGIC;
CO,FZ&nbsp;:&nbsp;OUT&nbsp;STD_LOGIC
);
END&nbsp;ALU181;
ARCHITECTURE&nbsp;behav&nbsp;OF&nbsp;ALU181&nbsp;IS
SIGNAL&nbsp;A9,B9,F9&nbsp;:&nbsp;STD_LOGIC_VECTOR(16&nbsp;DOWNTO&nbsp;0);
BEGIN
A9&nbsp;&lt;=&nbsp;'0'&nbsp;&amp;&nbsp;A&nbsp;;&nbsp;&nbsp;B9&nbsp;&lt;=&nbsp;'0'&nbsp;&amp;&nbsp;B&nbsp;;
PROCESS(M,CN,A9,B9)
BEGIN
CASE&nbsp;S&nbsp;&nbsp;IS
WHEN&nbsp;"0000"&nbsp;=&gt;NULL;
WHEN&nbsp;"0001"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=(A9&nbsp;OR&nbsp;B9)+CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=NOT(A9&nbsp;OR&nbsp;B9);&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"0010"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=(A9&nbsp;OR&nbsp;(NOT&nbsp;B9))+CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=(NOT&nbsp;A9)&nbsp;AND&nbsp;B9;&nbsp;END&nbsp;IF;
WHEN&nbsp;"0011"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=&nbsp;"00000000000000000"-CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;="00000000000000000";&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"0100"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=A9+(A9&nbsp;AND&nbsp;NOT&nbsp;B9)+CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=NOT&nbsp;(A9&nbsp;AND&nbsp;B9);&nbsp;END&nbsp;IF;
WHEN&nbsp;"0101"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=(A9&nbsp;OR&nbsp;B9)+(A9&nbsp;AND&nbsp;NOT&nbsp;B9)+CN;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=NOT&nbsp;B9;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"0110"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=A9&nbsp;-B9&nbsp;-&nbsp;CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=A9&nbsp;XOR&nbsp;B9;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"0111"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=(A9&nbsp;AND&nbsp;(NOT&nbsp;B9))-CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=A9&nbsp;AND&nbsp;(NOT&nbsp;B9);&nbsp;END&nbsp;IF;
WHEN&nbsp;"1000"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=A9&nbsp;+&nbsp;(A9&nbsp;AND&nbsp;B9)+CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=(NOT&nbsp;A9)&nbsp;OR&nbsp;B9;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"1001"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=A9&nbsp;+&nbsp;B9&nbsp;+&nbsp;CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=NOT(A9&nbsp;XOR&nbsp;B9);&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"1010"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=(A9&nbsp;OR&nbsp;(NOT&nbsp;B9))+(A9&nbsp;AND&nbsp;B9)+CN;&nbsp;ELSE&nbsp;F9&lt;=B9;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"1011"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=(A9&nbsp;AND&nbsp;B9)-&nbsp;CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=A9&nbsp;AND&nbsp;B9;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"1100"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=A9&nbsp;+&nbsp;A9&nbsp;+&nbsp;CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=&nbsp;"00000000000000001";&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"1101"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=(A9&nbsp;OR&nbsp;B9)+A9&nbsp;+&nbsp;CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=A9&nbsp;OR&nbsp;(NOT&nbsp;B9);&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"1110"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=(A9&nbsp;OR(NOT&nbsp;B9))+A9+CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=A9&nbsp;OR&nbsp;B9;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;"1111"&nbsp;=&gt;IF&nbsp;M='0'&nbsp;THEN&nbsp;F9&lt;=A9-CN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;F9&lt;=A9;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
WHEN&nbsp;OTHERS&nbsp;&nbsp;=&gt;F9&lt;=&nbsp;"00000000000000000"&nbsp;;
END&nbsp;CASE;
IF&nbsp;(F9&nbsp;=&nbsp;"00000000000000000")&nbsp;THEN&nbsp;FZ&nbsp;&lt;=&nbsp;'1';&nbsp;ELSE&nbsp;FZ&nbsp;&lt;=&nbsp;'0';&nbsp;END&nbsp;IF;
END&nbsp;PROCESS;
F&lt;=&nbsp;F9(15&nbsp;DOWNTO&nbsp;0);&nbsp;&nbsp;&nbsp;CO&nbsp;&lt;=&nbsp;F9(16);
COUT&nbsp;&lt;=&nbsp;"0000"&nbsp;WHEN&nbsp;F9(16)&nbsp;=&nbsp;'0'&nbsp;&nbsp;&nbsp;ELSE&nbsp;&nbsp;"0001"&nbsp;;
END&nbsp;behav;</code></pre>
  <span
    class="cke_reset cke_widget_drag_handler_container"
    style="
      background: url('https://csdnimg.cn/release/blog_editor_html/release2.3.7/ckeditor/plugins/widget/images/handle.png')
        rgba(220, 220, 220, 0.5);
      top: 0px;
      left: 0px;
    "
    ><img
      class="cke_reset cke_widget_drag_handler"
      data-cke-widget-drag-handler="1"
      src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw=="
      width="15"
      title="点击并拖拽以移动"
      height="15"
      role="presentation"
  /></span>
</div>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">ALU设计图：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">D[15..0]：总线输入；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">2个LD_DR：数据寄存器DR写选通；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">S[3..0]：运算选择；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">M：模式选择；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">CN：进位输入；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">ALU_B：结果写总线控制。</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">F[15..0]：结果输出；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">COUT[3..0]：进位输出；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">CO：进位标志；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">FZ：零标志。</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="94"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/bbd0d0172ee543c192222b12647abc68.png"
      src="https://i-blog.csdnimg.cn/direct/bbd0d0172ee543c192222b12647abc68.png"
      width="829"
      height="363"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Fbbd0d0172ee543c192222b12647abc68.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22829%22%2C%22height%22%3A%22363%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">ALU仿真：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >依次DR0存入0004、DR1存入0004，S=0110做减法。结果为0000，零标志FZ=1</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="93"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/408db195d85647a18af178f6636a764a.png"
      src="https://i-blog.csdnimg.cn/direct/408db195d85647a18af178f6636a764a.png"
      width="829"
      height="437"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F408db195d85647a18af178f6636a764a.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22829%22%2C%22height%22%3A%22437%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<h4 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  2.2.3 存储器模块
</h4>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">RAM设计图：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">AR_CLK：地址寄存器AR时序输入</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">RAM_CLK：读取存储器RAM时序输入</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">LD_AR：AR写选通</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">W/R：RAM读写控制，低电平读，高电平写</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >RAM_B：存储模块写总线控制，高电平输出到总线</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"></span
  ><span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="92"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/ddf016d598d9425eb23ced5fbd55d136.png"
      src="https://i-blog.csdnimg.cn/direct/ddf016d598d9425eb23ced5fbd55d136.png"
      width="829"
      height="264"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Fddf016d598d9425eb23ced5fbd55d136.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22829%22%2C%22height%22%3A%22264%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">RAM绑定初始数据mif：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >将测试程序二进制码存为mif文件，绑定到lpm_ram_dq中。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="91"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/6430492f16304f0aa9db6489b2a7b6b2.png"
      src="https://i-blog.csdnimg.cn/direct/6430492f16304f0aa9db6489b2a7b6b2.png"
      width="831"
      height="476"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F6430492f16304f0aa9db6489b2a7b6b2.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22831%22%2C%22height%22%3A%22476%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">RAM仿真：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >初始AR=0000，在第一个RAM_CLK上升沿后，读出[0000H]=2821H；</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">之后写入AR=0001H，可读出[0001H]=0929H;</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">再写入AR=0010H，读出[0010H]=0000H；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >置W/R=1，数据FFFFH存入[0010H]，之后读出[0010H]=FFFFH。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="90"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/9e4753e514e043b89df12e672641b9b2.png"
      src="https://i-blog.csdnimg.cn/direct/9e4753e514e043b89df12e672641b9b2.png"
      width="831"
      height="434"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F9e4753e514e043b89df12e672641b9b2.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22831%22%2C%22height%22%3A%22434%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<h4 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  2.2.4 其他模块
</h4>
<h5 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <span style="color: #000000">TIMER（STEP）设计图：</span>
</h5>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">CLK：时钟输入</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">RST：高电平重置</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="89"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/a6b7fe033f7e4df288838a140f4ad826.png"
      src="https://i-blog.csdnimg.cn/direct/a6b7fe033f7e4df288838a140f4ad826.png"
      width="830"
      height="359"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Fa6b7fe033f7e4df288838a140f4ad826.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22830%22%2C%22height%22%3A%22359%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">TIMER（STEP）仿真：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">CLK分出时序T1、T2、T3、T4。</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">RST高电平时重置。</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"></span
  ><span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="88"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/653b6ca3fb414f6da3e7da778dcb2be2.png"
      src="https://i-blog.csdnimg.cn/direct/653b6ca3fb414f6da3e7da778dcb2be2.png"
      width="830"
      height="436"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F653b6ca3fb414f6da3e7da778dcb2be2.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22830%22%2C%22height%22%3A%22436%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<h5 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <span style="color: #000000">PC设计图：</span>
</h5>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">LD_PC：PC置数</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">INC_PC：PC+1</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">ACLR：异步清零</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">PC_B：PC写总线控制</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="87"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/10c7cb96efb24fa7a3457bd05a64de70.png"
      src="https://i-blog.csdnimg.cn/direct/10c7cb96efb24fa7a3457bd05a64de70.png"
      width="831"
      height="181"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F10c7cb96efb24fa7a3457bd05a64de70.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22831%22%2C%22height%22%3A%22181%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">PC仿真：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">INC_PC置1时，PC+1；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">ACLR置1时，PC清零；</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >LD_PC=1且INC_PC=1时，执行置数操作，使PC=D[15..0]。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="86"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/c4b85447e92f4999b7786850219b0ff2.png"
      src="https://i-blog.csdnimg.cn/direct/c4b85447e92f4999b7786850219b0ff2.png"
      width="831"
      height="435"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Fc4b85447e92f4999b7786850219b0ff2.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22831%22%2C%22height%22%3A%22435%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<h4
  style="
    margin-left: 0.0001pt;
    margin-right: 0px;
    text-align: justify;
    background-color: transparent;
  "
>
  2.2.5&nbsp;控制器模块
</h4>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">采用状态机控制：</span>
</p>
<h5 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <span style="color: #000000">流程图：</span>
</h5>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="85"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/f9b3e9bc76fa4196ba1c4cedebd65b73.png"
      src="https://i-blog.csdnimg.cn/direct/f9b3e9bc76fa4196ba1c4cedebd65b73.png"
      width="831"
      height="645"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Ff9b3e9bc76fa4196ba1c4cedebd65b73.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22831%22%2C%22height%22%3A%22645%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<h5 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  状态控制信号表：
</h5>
<table border="1" cellspacing="0" style="width: 99.94%">
  <tbody>
    <tr>
      <td rowspan="2" style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">序号</span>
        </p>
      </td>
      <td
        rowspan="2"
        style="height: 14pt; vertical-align: center; width: 10.82%"
      >
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">作用</span>
        </p>
      </td>
      <td
        colspan="7"
        style="height: 14pt; vertical-align: center; width: 27.04%"
      >
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">REG</span>
        </p>
      </td>
      <td
        colspan="9"
        style="height: 14pt; vertical-align: center; width: 27.02%"
      >
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">ALU</span>
        </p>
      </td>
      <td
        colspan="3"
        style="height: 14pt; vertical-align: center; width: 9.58%"
      >
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">RAM</span>
        </p>
      </td>
      <td
        colspan="4"
        style="height: 14pt; vertical-align: center; width: 13.44%"
      >
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">PC</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">IR</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">IMM/OFFSET</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_REG3</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_REG2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_REG1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_REG0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">SEL1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">SEL0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">REG_B</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_DR1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_DR0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">S3</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">S2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">S1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">S0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">CN</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">M</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">ALU_B</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_AR</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">W/R</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">RAM_B</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_PC</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">INC_PC</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">ACLR</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">PC_B</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">LD_IR</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">IMM_B</span>
        </p>
      </td>
    </tr>
    <tr>
      <td
        colspan="2"
        style="height: 14pt; vertical-align: center; width: 13.64%"
      >
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">位数</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">24</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">23</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">22</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">21</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">20</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">19</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">18</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">17</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">16</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">15</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">14</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">13</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">12</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">11</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">10</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">9</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">8</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">7</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">6</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">5</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">4</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">3</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">PC-&gt;AR</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">RAM-&gt;IR</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs1-&gt;DR0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">3</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs2-&gt;DR1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">4</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">DR0+DR1-&gt;rd,PC+1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">5</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">imm-&gt;DR1/offset-&gt;DR1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">6</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">DR0+DR1-&gt;AR</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">7</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">RAM-&gt;rd,PC+1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">8</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs2-&gt;RAM,PC+1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rs2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">9</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">DR0-DR1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">10</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">PC-&gt;DR0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">11</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">DR0+DR1-&gt;PC</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">12</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">PC-&gt;DR0,PC+1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">13</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">PC-&gt;rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">rd</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 2.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">14</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10.82%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">PC+1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 4.36%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.52%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 2.6%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.48%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.92%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.02%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 3.46%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 5.76%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0</span>
        </p>
      </td>
    </tr>
  </tbody>
</table>
<h5><span style="color: #000000">状态转移图：</span><br /></h5>
<h5>
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="84"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/14e393144f224d50b976f24268c6c5a6.png"
      src="https://i-blog.csdnimg.cn/direct/14e393144f224d50b976f24268c6c5a6.png"
      width="830"
      height="320"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F14e393144f224d50b976f24268c6c5a6.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22830%22%2C%22height%22%3A%22320%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  >&nbsp;<span style="color: #000000">状态转移表：</span>
</h5>
<table border="1" cellspacing="0" style="width: 99.96%">
  <tbody>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">Source State</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">Destination State</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">Condition</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s12</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">(!OP[0]).(!OP[1]).(OP[2])</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s1</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!OP[0]).(!OP[1]).(!OP[2]) + (!OP[0]).(OP[1]) + (OP[0])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s5</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!OP[0]).(!OP[1]).(OP[2]) + (!OP[0]).(OP[1]) + (OP[0]).(!OP[1]) +
            (OP[0]).(OP[1]).(OP[2])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s2</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s3</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!OP[0]).(!OP[1]).(!OP[2]) + (OP[0]).(OP[1]).(!OP[2])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s3</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s9</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!OP[0]).(!OP[1]).(OP[2]) + (!OP[0]).(OP[1]) + (OP[0])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s3</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s4</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">(!OP[0]).(!OP[1]).(!OP[2])</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s4</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s5</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s4</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(OP[0]).(!OP[1]).(!OP[2]).(FUNCT3[0]).(!FUNCT3[1]).(!FUNCT3[2])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s5</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s6</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!OP[0]).(OP[1]).(!OP[2]) +
            (OP[0]).(!OP[1]).(!OP[2]).(!FUNCT3[0]).(!FUNCT3[1]).(!FUNCT3[2])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s5</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s11</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!OP[0]).(!OP[1]) + (!OP[0]).(OP[1]).(OP[2]) +
            (OP[0]).(!OP[1]).(!OP[2]).(!FUNCT3[1]).(FUNCT3[2]) +
            (OP[0]).(!OP[1]).(!OP[2]).(FUNCT3[1]) + (OP[0]).(!OP[1]).(OP[2]) +
            (OP[0]).(OP[1])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s6</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s7</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">(OP[0]).(!OP[1]).(!OP[2])</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s6</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s8</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!OP[0]) + (OP[0]).(!OP[1]).(OP[2]) + (OP[0]).(OP[1])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s7</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s8</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s9</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s14</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!FZ).(!FUNCT3[0]).(!FUNCT3[1]).(FUNCT3[2]) +
            (!FZ).(!FUNCT3[0]).(FUNCT3[1]) + (!FZ).(FUNCT3[0]) +
            (FZ).(!FUNCT3[0]).(!FUNCT3[1]).(!FUNCT3[2])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s9</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s10</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000"
            >(!FZ).(!FUNCT3[0]).(!FUNCT3[1]).(!FUNCT3[2]) +
            (FZ).(!FUNCT3[0]).(!FUNCT3[1]).(FUNCT3[2]) +
            (FZ).(!FUNCT3[0]).(FUNCT3[1]) + (FZ).(FUNCT3[0])</span
          >
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s10</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s5</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s11</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s12</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s13</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s13</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s5</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td style="height: 14pt; vertical-align: center; width: 7.8%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s14</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 10%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">s0</span>
        </p>
      </td>
      <td style="height: 14pt; vertical-align: center; width: 82.18%">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <br />
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >控制器模块ctl包括：指令寄存器IR、指令分析器ia、状态机sm</span
  >
</p>
<h5 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <span style="color: #000000">指令分析器ia代码：</span>
</h5>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >根据输入的指令，分析出操作码、源寄存器、目的寄存器、功能选择、扩展立即数。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">I：指令输入</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">RD：目的寄存器</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">RS1，RS2：源寄存器</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">OP：操作码</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">FUNCT3：功能选择</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">IMM：符号位扩展后的16位立即数</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">IMM_B：立即数写总线控制</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">decode24：24译码器函数</span>
</p>
<div
  tabindex="-1"
  contenteditable="false"
  data-cke-widget-wrapper="1"
  data-cke-filter="off"
  class="cke_widget_wrapper cke_widget_block cke_widget_codeSnippet"
  data-cke-display-name="代码段"
  data-cke-widget-id="83"
  role="region"
  aria-label="代码段 小部件"
>
  <pre
    data-cke-widget-keep-attr="0"
    data-widget="codeSnippet"
    class="cke_widget_element"
    data-cke-widget-data="%7B%22classes%22%3Anull%2C%22lang%22%3Anull%2C%22code%22%3A%22LIBRARY%C2%A0IEEE%3B%5CnUSE%C2%A0IEEE.STD_LOGIC_1164.ALL%3B%5CnUSE%C2%A0IEEE.STD_LOGIC_UNSIGNED.ALL%3B%5Cn%5CnENTITY%C2%A0ia%C2%A0IS%5Cn%C2%A0%C2%A0%C2%A0%C2%A0PORT%C2%A0(%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CLK%3A%C2%A0IN%C2%A0STD_LOGIC%3B%C2%A0--%E6%97%B6%E9%92%9F%E4%BF%A1%E5%8F%B7%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0I%3A%C2%A0IN%C2%A0STD_LOGIC_VECTOR(15%C2%A0DOWNTO%C2%A00)%3B%C2%A0--16%E4%BD%8D%E8%BE%93%E5%85%A5%E4%BF%A1%E5%8F%B7%EF%BC%8C%E8%A1%A8%E7%A4%BA%E6%8C%87%E4%BB%A4%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RD%3A%C2%A0OUT%C2%A0STD_LOGIC_VECTOR(3%C2%A0DOWNTO%C2%A00)%3B%C2%A0--4%E4%BD%8D%E8%BE%93%E5%87%BA%E4%BF%A1%E5%8F%B7%EF%BC%8C%E8%A1%A8%E7%A4%BA%E6%89%80%E9%80%89%E5%AF%84%E5%AD%98%E5%99%A83210%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS1%2C%C2%A0RS2%3A%C2%A0OUT%C2%A0STD_LOGIC_VECTOR(1%C2%A0DOWNTO%C2%A00)%3B%C2%A0--2%E4%BD%8D%E8%BE%93%E5%87%BA%E4%BF%A1%E5%8F%B7%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0OP%3A%C2%A0OUT%C2%A0STD_LOGIC_VECTOR(2%C2%A0DOWNTO%C2%A00)%3B%C2%A0--3%E4%BD%8D%E8%BE%93%E5%87%BA%E4%BF%A1%E5%8F%B7%EF%BC%8C%E8%A1%A8%E7%A4%BA%E6%93%8D%E4%BD%9C%E7%A0%81%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0FUNCT3%3A%C2%A0OUT%C2%A0STD_LOGIC_VECTOR(2%C2%A0DOWNTO%C2%A00)%3B%C2%A0--3%E4%BD%8D%E8%BE%93%E5%87%BA%E4%BF%A1%E5%8F%B7%EF%BC%8C%E8%A1%A8%E7%A4%BA%E5%8A%9F%E8%83%BD%E9%80%89%E6%8B%A9%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0IMM%3A%C2%A0OUT%C2%A0STD_LOGIC_VECTOR(15%C2%A0DOWNTO%C2%A00)%C2%A0--16%E4%BD%8D%E8%BE%93%E5%87%BA%E4%BF%A1%E5%8F%B7%EF%BC%8C%E8%A1%A8%E7%A4%BA%E7%AB%8B%E5%8D%B3%E6%95%B0%5Cn%C2%A0%C2%A0%C2%A0%C2%A0)%3B%5CnEND%C2%A0ia%3B%5Cn%5CnARCHITECTURE%C2%A0behav%C2%A0OF%C2%A0ia%C2%A0IS%5Cn%C2%A0%C2%A0%C2%A0%C2%A0FUNCTION%C2%A0decode24(x%C2%A0%3A%C2%A0IN%C2%A0STD_LOGIC_VECTOR(1%C2%A0DOWNTO%C2%A00))%C2%A0RETURN%C2%A0STD_LOGIC_VECTOR%C2%A0IS%C2%A0--%E8%BF%94%E5%9B%9E%E5%80%BC%E4%B8%8D%E5%86%99%E9%95%BF%E5%BA%A6%5Cn%C2%A0%C2%A0%C2%A0%C2%A0BEGIN%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CASE%C2%A0x%C2%A0IS%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%2200%5C%22%C2%A0%3D%3E%C2%A0RETURN%C2%A0%5C%220001%5C%22%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%2201%5C%22%C2%A0%3D%3E%C2%A0RETURN%C2%A0%5C%220010%5C%22%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%2210%5C%22%C2%A0%3D%3E%C2%A0RETURN%C2%A0%5C%220100%5C%22%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%2211%5C%22%C2%A0%3D%3E%C2%A0RETURN%C2%A0%5C%221000%5C%22%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0CASE%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0FUNCTION%C2%A0decode24%3B%5Cn%5Cn%C2%A0%C2%A0%C2%A0%C2%A0SIGNAL%C2%A0opcode%C2%A0%3A%C2%A0STD_LOGIC_VECTOR(2%C2%A0DOWNTO%C2%A00)%3B%5Cn%5Cn%C2%A0%C2%A0%C2%A0%C2%A0BEGIN%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0opcode%C2%A0%3C%3D%C2%A0I(2%C2%A0DOWNTO%C2%A00)%3B%5Cn%5Cn%C2%A0%C2%A0%C2%A0%C2%A0PROCESS(CLK%2C%C2%A0I%2C%C2%A0opcode)%5Cn%C2%A0%C2%A0%C2%A0%C2%A0BEGIN%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0IF%C2%A0CLK%C2%A0%3D%C2%A0'1'%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0THEN%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CASE%C2%A0opcode%C2%A0IS%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%22000%5C%22%C2%A0%3D%3E%C2%A0--R%E5%9E%8B%E6%8C%87%E4%BB%A4%EF%BC%8C%E5%8F%AA%E6%9C%89ADD%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RD%C2%A0%3C%3D%C2%A0decode24(I(4%C2%A0DOWNTO%C2%A03))%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS1%C2%A0%3C%3D%C2%A0I(9%C2%A0DOWNTO%C2%A08)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS2%C2%A0%3C%3D%C2%A0I(11%C2%A0DOWNTO%C2%A010)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%22001%5C%22%C2%A0%3D%3E%C2%A0--I%E5%9E%8B%E6%8C%87%E4%BB%A4%EF%BC%8C%E5%8F%AA%E6%9C%89ADDI%2CLH%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RD%C2%A0%3C%3D%C2%A0decode24(I(4%C2%A0DOWNTO%C2%A03))%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0FUNCT3%C2%A0%3C%3D%C2%A0I(7%C2%A0DOWNTO%C2%A05)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS1%C2%A0%3C%3D%C2%A0I(9%C2%A0DOWNTO%C2%A08)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0IF%C2%A0I(15)%C2%A0%3D%C2%A0'0'%C2%A0THEN%C2%A0IMM%C2%A0%3C%3D%C2%A0%5C%220000000000%5C%22%C2%A0%26%C2%A0I(15%C2%A0DOWNTO%C2%A010)%3B%C2%A0ELSE%C2%A0IMM%C2%A0%3C%3D%C2%A0%5C%221111111111%5C%22%C2%A0%26%C2%A0I(15%C2%A0DOWNTO%C2%A010)%3B%C2%A0END%C2%A0IF%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%22010%5C%22%C2%A0%3D%3E%C2%A0--S%E5%9E%8B%E6%8C%87%E4%BB%A4%EF%BC%8C%E5%8F%AA%E6%9C%89SH%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS1%C2%A0%3C%3D%C2%A0I(9%C2%A0DOWNTO%C2%A08)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS2%C2%A0%3C%3D%C2%A0I(11%C2%A0DOWNTO%C2%A010)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0IF%C2%A0I(15)%C2%A0%3D%C2%A0'0'%C2%A0THEN%C2%A0IMM%C2%A0%3C%3D%C2%A0%5C%220000000000%5C%22%C2%A0%26%C2%A0I(15%C2%A0DOWNTO%C2%A012)%C2%A0%26%C2%A0I(4%C2%A0DOWNTO%C2%A03)%3B%C2%A0ELSE%C2%A0IMM%C2%A0%3C%3D%C2%A0%5C%221111111111%5C%22%C2%A0%26%C2%A0I(15%C2%A0DOWNTO%C2%A012)%C2%A0%26%C2%A0I(4%C2%A0DOWNTO%C2%A03)%3B%C2%A0END%C2%A0IF%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%22011%5C%22%C2%A0%3D%3E%C2%A0--B%E5%9E%8B%E6%8C%87%E4%BB%A4%EF%BC%8C%E5%8F%AA%E6%9C%89BNE%2CBEQ%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0FUNCT3%C2%A0%3C%3D%C2%A0I(7%C2%A0DOWNTO%C2%A05)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS1%C2%A0%3C%3D%C2%A0I(9%C2%A0DOWNTO%C2%A08)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS2%C2%A0%3C%3D%C2%A0I(11%C2%A0DOWNTO%C2%A010)%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0IF%C2%A0I(15)%C2%A0%3D%C2%A0'0'%C2%A0THEN%C2%A0IMM%C2%A0%3C%3D%C2%A0%5C%220000000000%5C%22%C2%A0%26%C2%A0I(15%C2%A0DOWNTO%C2%A012)%C2%A0%26%C2%A0I(4%C2%A0DOWNTO%C2%A03)%3B%C2%A0ELSE%C2%A0IMM%C2%A0%3C%3D%C2%A0%5C%221111111111%5C%22%C2%A0%26%C2%A0I(15%C2%A0DOWNTO%C2%A012)%C2%A0%26%C2%A0I(4%C2%A0DOWNTO%C2%A03)%3B%C2%A0END%C2%A0IF%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0%5C%22100%5C%22%C2%A0%3D%3E%C2%A0--J%E5%9E%8B%E6%8C%87%E4%BB%A4%EF%BC%8C%E5%8F%AA%E6%9C%89JAL%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RD%C2%A0%3C%3D%C2%A0decode24(I(4%C2%A0DOWNTO%C2%A03))%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0IF%C2%A0I(15)%C2%A0%3D%C2%A0'0'%C2%A0THEN%C2%A0IMM%C2%A0%3C%3D%C2%A0%5C%2200000%5C%22%C2%A0%26%C2%A0I(15%C2%A0DOWNTO%C2%A05)%3B%C2%A0ELSE%C2%A0IMM%C2%A0%3C%3D%C2%A0%5C%2211111%5C%22%C2%A0%26%C2%A0I(15%C2%A0DOWNTO%C2%A05)%3B%C2%A0END%C2%A0IF%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0WHEN%C2%A0OTHERS%C2%A0%3D%3E%C2%A0NULL%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0CASE%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0IF%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0OP%C2%A0%3C%3D%C2%A0opcode%3B%5Cn%C2%A0%C2%A0%C2%A0%C2%A0END%C2%A0PROCESS%3B%5Cn%5CnEND%C2%A0behav%3B%22%7D"
  ><code class="hljs hljs">LIBRARY&nbsp;IEEE;
USE&nbsp;IEEE.STD_LOGIC_1164.ALL;
USE&nbsp;IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY&nbsp;ia&nbsp;IS
&nbsp;&nbsp;&nbsp;&nbsp;PORT&nbsp;(
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CLK:&nbsp;IN&nbsp;STD_LOGIC;&nbsp;--时钟信号
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I:&nbsp;IN&nbsp;STD_LOGIC_VECTOR(15&nbsp;DOWNTO&nbsp;0);&nbsp;--16 位输入信号，表示指令
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RD:&nbsp;OUT&nbsp;STD_LOGIC_VECTOR(3&nbsp;DOWNTO&nbsp;0);&nbsp;--4 位输出信号，表示所选寄存器 3210
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS1,&nbsp;RS2:&nbsp;OUT&nbsp;STD_LOGIC_VECTOR(1&nbsp;DOWNTO&nbsp;0);&nbsp;--2 位输出信号
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OP:&nbsp;OUT&nbsp;STD_LOGIC_VECTOR(2&nbsp;DOWNTO&nbsp;0);&nbsp;--3 位输出信号，表示操作码
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FUNCT3:&nbsp;OUT&nbsp;STD_LOGIC_VECTOR(2&nbsp;DOWNTO&nbsp;0);&nbsp;--3 位输出信号，表示功能选择
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IMM:&nbsp;OUT&nbsp;STD_LOGIC_VECTOR(15&nbsp;DOWNTO&nbsp;0)&nbsp;--16 位输出信号，表示立即数
&nbsp;&nbsp;&nbsp;&nbsp;);
END&nbsp;ia;

ARCHITECTURE&nbsp;behav&nbsp;OF&nbsp;ia&nbsp;IS
&nbsp;&nbsp;&nbsp;&nbsp;FUNCTION&nbsp;decode24(x&nbsp;:&nbsp;IN&nbsp;STD_LOGIC_VECTOR(1&nbsp;DOWNTO&nbsp;0))&nbsp;RETURN&nbsp;STD_LOGIC_VECTOR&nbsp;IS&nbsp;--返回值不写长度
&nbsp;&nbsp;&nbsp;&nbsp;BEGIN
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CASE&nbsp;x&nbsp;IS
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"00"&nbsp;=&gt;&nbsp;RETURN&nbsp;"0001";
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"01"&nbsp;=&gt;&nbsp;RETURN&nbsp;"0010";
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"10"&nbsp;=&gt;&nbsp;RETURN&nbsp;"0100";
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"11"&nbsp;=&gt;&nbsp;RETURN&nbsp;"1000";
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;CASE;
&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;FUNCTION&nbsp;decode24;

&nbsp;&nbsp;&nbsp;&nbsp;SIGNAL&nbsp;opcode&nbsp;:&nbsp;STD_LOGIC_VECTOR(2&nbsp;DOWNTO&nbsp;0);

&nbsp;&nbsp;&nbsp;&nbsp;BEGIN
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;opcode&nbsp;&lt;=&nbsp;I(2&nbsp;DOWNTO&nbsp;0);

&nbsp;&nbsp;&nbsp;&nbsp;PROCESS(CLK,&nbsp;I,&nbsp;opcode)
&nbsp;&nbsp;&nbsp;&nbsp;BEGIN
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IF&nbsp;CLK&nbsp;=&nbsp;'1'
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;THEN
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CASE&nbsp;opcode&nbsp;IS
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"000"&nbsp;=&gt;&nbsp;--R 型指令，只有 ADD
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RD&nbsp;&lt;=&nbsp;decode24(I(4&nbsp;DOWNTO&nbsp;3));
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS1&nbsp;&lt;=&nbsp;I(9&nbsp;DOWNTO&nbsp;8);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS2&nbsp;&lt;=&nbsp;I(11&nbsp;DOWNTO&nbsp;10);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"001"&nbsp;=&gt;&nbsp;--I 型指令，只有 ADDI,LH
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RD&nbsp;&lt;=&nbsp;decode24(I(4&nbsp;DOWNTO&nbsp;3));
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FUNCT3&nbsp;&lt;=&nbsp;I(7&nbsp;DOWNTO&nbsp;5);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS1&nbsp;&lt;=&nbsp;I(9&nbsp;DOWNTO&nbsp;8);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IF&nbsp;I(15)&nbsp;=&nbsp;'0'&nbsp;THEN&nbsp;IMM&nbsp;&lt;=&nbsp;"0000000000"&nbsp;&amp;&nbsp;I(15&nbsp;DOWNTO&nbsp;10);&nbsp;ELSE&nbsp;IMM&nbsp;&lt;=&nbsp;"1111111111"&nbsp;&amp;&nbsp;I(15&nbsp;DOWNTO&nbsp;10);&nbsp;END&nbsp;IF;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"010"&nbsp;=&gt;&nbsp;--S 型指令，只有 SH
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS1&nbsp;&lt;=&nbsp;I(9&nbsp;DOWNTO&nbsp;8);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS2&nbsp;&lt;=&nbsp;I(11&nbsp;DOWNTO&nbsp;10);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IF&nbsp;I(15)&nbsp;=&nbsp;'0'&nbsp;THEN&nbsp;IMM&nbsp;&lt;=&nbsp;"0000000000"&nbsp;&amp;&nbsp;I(15&nbsp;DOWNTO&nbsp;12)&nbsp;&amp;&nbsp;I(4&nbsp;DOWNTO&nbsp;3);&nbsp;ELSE&nbsp;IMM&nbsp;&lt;=&nbsp;"1111111111"&nbsp;&amp;&nbsp;I(15&nbsp;DOWNTO&nbsp;12)&nbsp;&amp;&nbsp;I(4&nbsp;DOWNTO&nbsp;3);&nbsp;END&nbsp;IF;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"011"&nbsp;=&gt;&nbsp;--B 型指令，只有 BNE,BEQ
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FUNCT3&nbsp;&lt;=&nbsp;I(7&nbsp;DOWNTO&nbsp;5);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS1&nbsp;&lt;=&nbsp;I(9&nbsp;DOWNTO&nbsp;8);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS2&nbsp;&lt;=&nbsp;I(11&nbsp;DOWNTO&nbsp;10);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IF&nbsp;I(15)&nbsp;=&nbsp;'0'&nbsp;THEN&nbsp;IMM&nbsp;&lt;=&nbsp;"0000000000"&nbsp;&amp;&nbsp;I(15&nbsp;DOWNTO&nbsp;12)&nbsp;&amp;&nbsp;I(4&nbsp;DOWNTO&nbsp;3);&nbsp;ELSE&nbsp;IMM&nbsp;&lt;=&nbsp;"1111111111"&nbsp;&amp;&nbsp;I(15&nbsp;DOWNTO&nbsp;12)&nbsp;&amp;&nbsp;I(4&nbsp;DOWNTO&nbsp;3);&nbsp;END&nbsp;IF;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;"100"&nbsp;=&gt;&nbsp;--J 型指令，只有 JAL
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RD&nbsp;&lt;=&nbsp;decode24(I(4&nbsp;DOWNTO&nbsp;3));
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IF&nbsp;I(15)&nbsp;=&nbsp;'0'&nbsp;THEN&nbsp;IMM&nbsp;&lt;=&nbsp;"00000"&nbsp;&amp;&nbsp;I(15&nbsp;DOWNTO&nbsp;5);&nbsp;ELSE&nbsp;IMM&nbsp;&lt;=&nbsp;"11111"&nbsp;&amp;&nbsp;I(15&nbsp;DOWNTO&nbsp;5);&nbsp;END&nbsp;IF;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN&nbsp;OTHERS&nbsp;=&gt;&nbsp;NULL;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;CASE;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;IF;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OP&nbsp;&lt;=&nbsp;opcode;
&nbsp;&nbsp;&nbsp;&nbsp;END&nbsp;PROCESS;

END&nbsp;behav;</code></pre>

</div>
<h5 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <span style="color: #000000">状态机 sm 代码：</span>
</h5>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >进程 1 中根据输入的 OP、FUNCT3、FZ 以及当前状态，确定新的状态。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >进程 2 中根据当前状态和寄存器编码 RD、RS1、RS2 输出相应的控制信号
    C[24..0]。</span
  ><span style="color: #000000"></span><br />
</p>
<div
  tabindex="-1"
  contenteditable="false"
  data-cke-widget-wrapper="1"
  data-cke-filter="off"
  class="cke_widget_wrapper cke_widget_block cke_widget_codeSnippet"
  data-cke-display-name="代码段"
  data-cke-widget-id="82"
  role="region"
  aria-label="代码段 小部件"
>
  <pre
    data-cke-widget-keep-attr="0"
    data-widget="codeSnippet"
    class="cke_widget_element"
    data-cke-widget-data="%7B%22classes%22%3Anull%2C%22lang%22%3Anull%2C%22code%22%3A%221.--%C2%A0Quartus%C2%A0Prime%C2%A0VHDL%C2%A0Template%5Cn2.--%C2%A0Four-State%C2%A0Moore%C2%A0State%C2%A0Machine%5Cn3.--%20211540882%5Cn4.--%C2%A0A%C2%A0Moore%C2%A0machine's%C2%A0CTLs%C2%A0are%C2%A0dependent%C2%A0only%C2%A0on%C2%A0the%C2%A0current%C2%A0state.%5Cn5.--%C2%A0The%C2%A0CTL%C2%A0is%C2%A0written%C2%A0only%C2%A0when%C2%A0the%C2%A0state%C2%A0changes.%C2%A0%C2%A0(State%5Cn6.--%C2%A0transitions%C2%A0are%C2%A0synchronous.)%5Cn7.%5Cn8.library%C2%A0ieee%3B%5Cn9.use%C2%A0ieee.std_logic_1164.all%3B%5Cn10.use%C2%A0ieee.std_logic_unsigned.all%3B%5Cn11.%5Cn12.entity%C2%A0sm%C2%A0is%5Cn13.%C2%A0port(%5Cn14.%C2%A0%C2%A0CLK%C2%A0%C2%A0%C2%A0%3A%C2%A0in%C2%A0std_logic%3B%5Cn15.%C2%A0%C2%A0RD%C2%A0%3A%C2%A0in%C2%A0std_logic_vector(3%C2%A0downto%C2%A00)%3B%5Cn16.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0OP%2C%C2%A0FUNCT3%C2%A0%C2%A0%3A%C2%A0in%C2%A0std_logic_vector(2%C2%A0downto%C2%A00)%3B%5Cn17.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0RS1%2C%C2%A0RS2%C2%A0%3A%C2%A0in%C2%A0std_logic_vector(1%C2%A0downto%C2%A00)%3B%5Cn18.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0FZ%C2%A0%3A%C2%A0in%C2%A0std_logic%3B%5Cn19.%C2%A0%C2%A0RST%C2%A0%C2%A0%3A%C2%A0in%C2%A0std_logic%3B%5Cn20.%C2%A0%C2%A0CTL%C2%A0%C2%A0%3A%C2%A0out%C2%A0std_logic_vector(24%C2%A0downto%C2%A00))%3B%5Cn21.end%C2%A0entity%3B%5Cn22.%5Cn23.architecture%C2%A0rtl%C2%A0of%C2%A0sm%C2%A0is%5Cn24.%5Cn25.%C2%A0--%C2%A0Build%C2%A0an%C2%A0enumerated%C2%A0type%C2%A0for%C2%A0the%C2%A0state%C2%A0machine%5Cn26.%C2%A0type%C2%A0state_type%C2%A0is%C2%A0(s0%2C%C2%A0s1%2C%C2%A0s2%2C%C2%A0s3%2C%C2%A0s4%2C%C2%A0s5%2C%C2%A0s6%2C%C2%A0s7%2C%C2%A0s8%2C%C2%A0s9%2C%C2%A0s10%2C%C2%A0s11%2C%C2%A0s12%2C%C2%A0s13%2C%C2%A0s14)%3B%5Cn27.%5Cn28.%C2%A0--%C2%A0Register%C2%A0to%C2%A0hold%C2%A0the%C2%A0current%C2%A0state%5Cn29.%C2%A0signal%C2%A0state%C2%A0%C2%A0%C2%A0%3A%C2%A0state_type%3B%5Cn30.%5Cn31.begin%5Cn32.%C2%A0--%C2%A0Logic%C2%A0to%C2%A0advance%C2%A0to%C2%A0the%C2%A0next%C2%A0state%5Cn33.%C2%A0process%C2%A0(CLK%2C%C2%A0RST%2C%C2%A0OP%2C%C2%A0FUNCT3%2C%C2%A0FZ)%5Cn34.%C2%A0begin%5Cn35.%C2%A0%C2%A0if%C2%A0RST%C2%A0%3D%C2%A0'1'%C2%A0then%5Cn36.%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s0%3B%5Cn37.%C2%A0%C2%A0elsif%C2%A0(rising_edge(CLK))%C2%A0then%5Cn38.%C2%A0%C2%A0%C2%A0case%C2%A0state%C2%A0is%5Cn39.%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s0%3D%3E%5Cn40.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s1%3B%5Cn41.%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s1%3D%3E%5Cn42.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0OP%C2%A0%3D%C2%A0%5C%22100%5C%22%C2%A0then%5Cn43.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s12%3B%5Cn44.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0else%5Cn45.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s2%3B%5Cn46.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn47.%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s2%3D%3E%5Cn48.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0OP%C2%A0%3D%C2%A0%5C%22000%5C%22%C2%A0or%C2%A0OP%C2%A0%3D%C2%A0%5C%22011%5C%22%C2%A0then%5Cn49.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s3%3B%5Cn50.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0else%5Cn51.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s5%3B%5Cn52.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn53.%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s3%C2%A0%3D%3E%5Cn54.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0OP%C2%A0%3D%C2%A0%5C%22000%5C%22%C2%A0then%5Cn55.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s4%3B%5Cn56.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0else%5Cn57.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s9%3B%5Cn58.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn59.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s4%C2%A0%3D%3E%5Cn60.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s0%3B%5Cn61.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s5%C2%A0%3D%3E%5Cn62.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0OP%C2%A0%3D%C2%A0%5C%22001%5C%22%C2%A0and%C2%A0FUNCT3%C2%A0%3D%C2%A0%5C%22001%5C%22%C2%A0then%5Cn63.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s4%3B%5Cn64.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0elsif%C2%A0(OP%C2%A0%3D%C2%A0%5C%22001%5C%22%C2%A0and%C2%A0FUNCT3%C2%A0%3D%C2%A0%5C%22000%5C%22)%C2%A0or%C2%A0OP%C2%A0%3D%C2%A0%5C%22010%5C%22%C2%A0then%5Cn65.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s6%3B%5Cn66.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0else%5Cn67.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s11%3B%5Cn68.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn69.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s6%C2%A0%3D%3E%5Cn70.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0OP%C2%A0%3D%C2%A0%5C%22001%5C%22%C2%A0then%5Cn71.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s7%3B%5Cn72.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0else%5Cn73.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s8%3B%5Cn74.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn75.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s7%C2%A0%3D%3E%5Cn76.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s0%3B%5Cn77.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s8%C2%A0%3D%3E%5Cn78.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s0%3B%5Cn79.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s9%C2%A0%3D%3E%5Cn80.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0FUNCT3%C2%A0%3D%C2%A0%5C%22000%5C%22%C2%A0then%5Cn81.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0FZ%C2%A0%3D%C2%A0'0'%C2%A0then%5Cn82.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s10%3B%5Cn83.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0else%5Cn84.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s14%3B%5Cn85.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn86.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0else%5Cn87.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0FZ%C2%A0%3D%C2%A0'1'%C2%A0then%5Cn88.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s10%3B%5Cn89.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0else%5Cn90.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s14%3B%5Cn91.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn92.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0end%C2%A0if%3B%5Cn93.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s10%C2%A0%3D%3E%5Cn94.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s5%3B%5Cn95.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s11%C2%A0%3D%3E%5Cn96.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s0%3B%5Cn97.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s12%C2%A0%3D%3E%5Cn98.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s13%3B%5Cn99.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s13%C2%A0%3D%3E%5Cn100.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s5%3B%5Cn101.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s14%C2%A0%3D%3E%5Cn102.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0state%C2%A0%3C%3D%C2%A0s0%3B%5Cn103.%C2%A0%C2%A0%C2%A0end%C2%A0case%3B%5Cn104.%C2%A0%C2%A0end%C2%A0if%3B%5Cn105.%C2%A0end%C2%A0process%3B%5Cn106.%5Cn107.%C2%A0--%C2%A0CTL%C2%A0depends%C2%A0solely%C2%A0on%C2%A0the%C2%A0current%C2%A0state%5Cn108.%C2%A0process%C2%A0(state%2C%C2%A0RS1%2C%C2%A0RS2%2C%C2%A0RD)%5Cn109.%C2%A0begin%5Cn110.%C2%A0%C2%A0case%C2%A0state%C2%A0is%5Cn111.%C2%A0%C2%A0%C2%A0when%C2%A0s0%C2%A0%3D%3E%5Cn112.%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000000000000100000100%5C%22%3B%5Cn113.%C2%A0%C2%A0%C2%A0when%C2%A0s1%C2%A0%3D%3E%5Cn114.%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000000000000001000010%5C%22%3B%5Cn115.%C2%A0%C2%A0%C2%A0when%C2%A0s2%C2%A0%3D%3E%5Cn116.%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000%5C%22%C2%A0%26%C2%A0RS1%C2%A0%26%C2%A0%5C%221010000000000000000%5C%22%3B%5Cn117.%C2%A0%C2%A0%C2%A0when%C2%A0s3%C2%A0%3D%3E%5Cn118.%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000%5C%22%C2%A0%26%C2%A0RS2%C2%A0%26%C2%A0%5C%221100000000000000000%5C%22%3B%5Cn119.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s4%C2%A0%3D%3E%5Cn120.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0RD%C2%A0%26%C2%A0%5C%22000001001001000010000%5C%22%3B%5Cn121.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s5%C2%A0%3D%3E%5Cn122.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000100000000000000001%5C%22%3B%5Cn123.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s6%C2%A0%3D%3E%5Cn124.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000001001001100000000%5C%22%3B%5Cn125.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s7%C2%A0%3D%3E%5Cn126.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0RD%C2%A0%26%C2%A0%5C%22000000000000001010000%5C%22%3B%5Cn127.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s8%C2%A0%3D%3E%5Cn128.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000%5C%22%C2%A0%26%C2%A0RS2%C2%A0%26%C2%A0%5C%221000000000010010000%5C%22%3B%5Cn129.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s9%C2%A0%3D%3E%5Cn130.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000000110000000000000%5C%22%3B%5Cn131.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s10%C2%A0%3D%3E%5Cn132.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000010000000000000100%5C%22%3B%5Cn133.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s11%C2%A0%3D%3E%5Cn134.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000001001001000110000%5C%22%3B%5Cn135.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s12%C2%A0%3D%3E%5Cn136.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000010000000000010100%5C%22%3B%5Cn137.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s13%C2%A0%3D%3E%5Cn138.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0RD%C2%A0%26%C2%A0%5C%22000000000000000000100%5C%22%3B%5Cn139.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0when%C2%A0s14%C2%A0%3D%3E%5Cn140.%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0%C2%A0CTL%C2%A0%3C%3D%C2%A0%5C%220000000000000000000010000%5C%22%3B%5Cn141.%C2%A0%C2%A0end%C2%A0case%3B%5Cn142.%C2%A0end%C2%A0process%3B%5Cn143.end%C2%A0rtl%3B%22%7D"
  ><code class="hljs hljs">1.--&nbsp;Quartus&nbsp;Prime&nbsp;VHDL&nbsp;Template
2.--&nbsp;Four-State&nbsp;Moore&nbsp;State&nbsp;Machine
3.-- 211540882
4.--&nbsp;A&nbsp;Moore&nbsp;machine's&nbsp;CTLs&nbsp;are&nbsp;dependent&nbsp;only&nbsp;on&nbsp;the&nbsp;current&nbsp;state.
5.--&nbsp;The&nbsp;CTL&nbsp;is&nbsp;written&nbsp;only&nbsp;when&nbsp;the&nbsp;state&nbsp;changes.&nbsp;&nbsp;(State
6.--&nbsp;transitions&nbsp;are&nbsp;synchronous.) 7.
8.library&nbsp;ieee;
9.use&nbsp;ieee.std_logic_1164.all;
10.use&nbsp;ieee.std_logic_unsigned.all; 11.
12.entity&nbsp;sm&nbsp;is
13.&nbsp;port(
14.&nbsp;&nbsp;CLK&nbsp;&nbsp;&nbsp;:&nbsp;in&nbsp;std_logic;
15.&nbsp;&nbsp;RD&nbsp;:&nbsp;in&nbsp;std_logic_vector(3&nbsp;downto&nbsp;0);
16.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OP,&nbsp;FUNCT3&nbsp;&nbsp;:&nbsp;in&nbsp;std_logic_vector(2&nbsp;downto&nbsp;0);
17.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RS1,&nbsp;RS2&nbsp;:&nbsp;in&nbsp;std_logic_vector(1&nbsp;downto&nbsp;0);
18.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FZ&nbsp;:&nbsp;in&nbsp;std_logic;
19.&nbsp;&nbsp;RST&nbsp;&nbsp;:&nbsp;in&nbsp;std_logic;
20.&nbsp;&nbsp;CTL&nbsp;&nbsp;:&nbsp;out&nbsp;std_logic_vector(24&nbsp;downto&nbsp;0));
21.end&nbsp;entity; 22.
23.architecture&nbsp;rtl&nbsp;of&nbsp;sm&nbsp;is 24.
25.&nbsp;--&nbsp;Build&nbsp;an&nbsp;enumerated&nbsp;type&nbsp;for&nbsp;the&nbsp;state&nbsp;machine
26.&nbsp;type&nbsp;state_type&nbsp;is&nbsp;(s0,&nbsp;s1,&nbsp;s2,&nbsp;s3,&nbsp;s4,&nbsp;s5,&nbsp;s6,&nbsp;s7,&nbsp;s8,&nbsp;s9,&nbsp;s10,&nbsp;s11,&nbsp;s12,&nbsp;s13,&nbsp;s14); 27.
28.&nbsp;--&nbsp;Register&nbsp;to&nbsp;hold&nbsp;the&nbsp;current&nbsp;state
29.&nbsp;signal&nbsp;state&nbsp;&nbsp;&nbsp;:&nbsp;state_type; 30.
31.begin
32.&nbsp;--&nbsp;Logic&nbsp;to&nbsp;advance&nbsp;to&nbsp;the&nbsp;next&nbsp;state
33.&nbsp;process&nbsp;(CLK,&nbsp;RST,&nbsp;OP,&nbsp;FUNCT3,&nbsp;FZ)
34.&nbsp;begin
35.&nbsp;&nbsp;if&nbsp;RST&nbsp;=&nbsp;'1'&nbsp;then
36.&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s0;
37.&nbsp;&nbsp;elsif&nbsp;(rising_edge(CLK))&nbsp;then
38.&nbsp;&nbsp;&nbsp;case&nbsp;state&nbsp;is
39.&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s0=&gt;
40.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s1;
41.&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s1=&gt;
42.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;OP&nbsp;=&nbsp;"100"&nbsp;then
43.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s12;
44.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
45.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s2;
46.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
47.&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s2=&gt;
48.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;OP&nbsp;=&nbsp;"000"&nbsp;or&nbsp;OP&nbsp;=&nbsp;"011"&nbsp;then
49.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s3;
50.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
51.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s5;
52.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
53.&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s3&nbsp;=&gt;
54.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;OP&nbsp;=&nbsp;"000"&nbsp;then
55.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s4;
56.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
57.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s9;
58.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
59.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s4&nbsp;=&gt;
60.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s0;
61.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s5&nbsp;=&gt;
62.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;OP&nbsp;=&nbsp;"001"&nbsp;and&nbsp;FUNCT3&nbsp;=&nbsp;"001"&nbsp;then
63.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s4;
64.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;elsif&nbsp;(OP&nbsp;=&nbsp;"001"&nbsp;and&nbsp;FUNCT3&nbsp;=&nbsp;"000")&nbsp;or&nbsp;OP&nbsp;=&nbsp;"010"&nbsp;then
65.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s6;
66.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
67.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s11;
68.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
69.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s6&nbsp;=&gt;
70.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;OP&nbsp;=&nbsp;"001"&nbsp;then
71.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s7;
72.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
73.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s8;
74.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
75.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s7&nbsp;=&gt;
76.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s0;
77.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s8&nbsp;=&gt;
78.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s0;
79.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s9&nbsp;=&gt;
80.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;FUNCT3&nbsp;=&nbsp;"000"&nbsp;then
81.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;FZ&nbsp;=&nbsp;'0'&nbsp;then
82.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s10;
83.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
84.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s14;
85.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
86.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
87.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;FZ&nbsp;=&nbsp;'1'&nbsp;then
88.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s10;
89.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
90.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s14;
91.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
92.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end&nbsp;if;
93.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s10&nbsp;=&gt;
94.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s5;
95.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s11&nbsp;=&gt;
96.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s0;
97.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s12&nbsp;=&gt;
98.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s13;
99.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s13&nbsp;=&gt;
100.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s5;
101.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s14&nbsp;=&gt;
102.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state&nbsp;&lt;=&nbsp;s0;
103.&nbsp;&nbsp;&nbsp;end&nbsp;case;
104.&nbsp;&nbsp;end&nbsp;if;
105.&nbsp;end&nbsp;process; 106.
107.&nbsp;--&nbsp;CTL&nbsp;depends&nbsp;solely&nbsp;on&nbsp;the&nbsp;current&nbsp;state
108.&nbsp;process&nbsp;(state,&nbsp;RS1,&nbsp;RS2,&nbsp;RD)
109.&nbsp;begin
110.&nbsp;&nbsp;case&nbsp;state&nbsp;is
111.&nbsp;&nbsp;&nbsp;when&nbsp;s0&nbsp;=&gt;
112.&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000000000000100000100";
113.&nbsp;&nbsp;&nbsp;when&nbsp;s1&nbsp;=&gt;
114.&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000000000000001000010";
115.&nbsp;&nbsp;&nbsp;when&nbsp;s2&nbsp;=&gt;
116.&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000"&nbsp;&amp;&nbsp;RS1&nbsp;&amp;&nbsp;"1010000000000000000";
117.&nbsp;&nbsp;&nbsp;when&nbsp;s3&nbsp;=&gt;
118.&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000"&nbsp;&amp;&nbsp;RS2&nbsp;&amp;&nbsp;"1100000000000000000";
119.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s4&nbsp;=&gt;
120.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;RD&nbsp;&amp;&nbsp;"000001001001000010000";
121.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s5&nbsp;=&gt;
122.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000100000000000000001";
123.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s6&nbsp;=&gt;
124.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000001001001100000000";
125.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s7&nbsp;=&gt;
126.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;RD&nbsp;&amp;&nbsp;"000000000000001010000";
127.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s8&nbsp;=&gt;
128.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000"&nbsp;&amp;&nbsp;RS2&nbsp;&amp;&nbsp;"1000000000010010000";
129.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s9&nbsp;=&gt;
130.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000000110000000000000";
131.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s10&nbsp;=&gt;
132.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000010000000000000100";
133.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s11&nbsp;=&gt;
134.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000001001001000110000";
135.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s12&nbsp;=&gt;
136.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000010000000000010100";
137.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s13&nbsp;=&gt;
138.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;RD&nbsp;&amp;&nbsp;"000000000000000000100";
139.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when&nbsp;s14&nbsp;=&gt;
140.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTL&nbsp;&lt;=&nbsp;"0000000000000000000010000";
141.&nbsp;&nbsp;end&nbsp;case;
142.&nbsp;end&nbsp;process;
143.end&nbsp;rtl;</code></pre>
  <span
    class="cke_reset cke_widget_drag_handler_container"
    style="
      background: url('https://csdnimg.cn/release/blog_editor_html/release2.3.7/ckeditor/plugins/widget/images/handle.png')
        rgba(220, 220, 220, 0.5);
      top: 0px;
      left: 0px;
    "
    ><img
      class="cke_reset cke_widget_drag_handler"
      data-cke-widget-drag-handler="1"
      src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw=="
      width="15"
      title="点击并拖拽以移动"
      height="15"
      role="presentation"
  /></span>
</div>
<h5 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  <span style="color: #000000">控制器 ctl 设计图：</span>
</h5>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="81"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/b870bd4836a64adea5ed06f667fd5bc4.png"
      src="https://i-blog.csdnimg.cn/direct/b870bd4836a64adea5ed06f667fd5bc4.png"
      width="829"
      height="209"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Fb870bd4836a64adea5ed06f667fd5bc4.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22829%22%2C%22height%22%3A%22209%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">控制器 ctl 仿真：</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000">测试指令：addi r0, r0, 10；16 进制为 2821H</span>
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >首先进入状态 S0，输出控制位 0000104H，控制 PC 值写入 AR；</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >然后到状态 S1，输出控制位 0000042H，控制读指令 2821H 到 IR；</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >然后到状态 S2，输出控制位 0050000H，控制 rs1 的值写入 DR0；</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >然后到状态 S5，输出控制位 0020001H，控制立即数扩展后写入 DR1；</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span style="color: #000000"
    >然后到状态 S4，输出控制位 0209210H，控制结果写入 rd。</span
  >
</p>
<p style="margin-left: 0.0001pt; margin-right: 0; text-align: justify">
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="80"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/25469987620443c8b889ca96e08b9f76.png"
      src="https://i-blog.csdnimg.cn/direct/25469987620443c8b889ca96e08b9f76.png"
      width="830"
      height="409"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F25469987620443c8b889ca96e08b9f76.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22830%22%2C%22height%22%3A%22409%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  ><br />
</p>
<h2 style="background-color: transparent">2.3 整机调试&nbsp;</h2>
<h3>
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="79"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/402cb07dec1a4e24910232358dbb3c92.png"
      src="https://i-blog.csdnimg.cn/direct/402cb07dec1a4e24910232358dbb3c92.png"
      width="830"
      height="448"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F402cb07dec1a4e24910232358dbb3c92.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22830%22%2C%22height%22%3A%22448%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  >&nbsp;2.3.1 测试程序设计
</h3>
<table border="1" cellspacing="0">
  <tbody>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">地址（16 进制）</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">内容（16 进制）</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">助记符</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">说明</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0000</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">2821</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">addi r0, r0, 10;</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">r0 += 10;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0001</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0929</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">addi r1, r1, 2;</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">r1 += 2;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0002</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">F41B</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">bne r0, r1, -1;</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">if(r0 != r1) pc -= 1;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0003</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">540A</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">sh r1, 21(r0);</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">[r0 + 21] = r1;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0004</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">5511</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">lh r2, 21(r1);</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">r2 = [r1 + 21];</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0005</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0900</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">add r0, r1, r2;</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">r0 = r1 + r2;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0006</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">2929</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">addi r1, r1, 10;</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">r1 += 10;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0007</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">F43B</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">beq r0, r1, -1;</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">if(r0 == r1) pc -= 1;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">0008</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.5pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">FF04</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">jal r0, -8;</span>
        </p>
      </td>
      <td style="vertical-align: center; width: 106.55pt">
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">r0 = pc +1;</span>
        </p>
        <p style="margin-left: 0.0001pt; margin-right: 0; text-align: center">
          <span style="color: #000000">pc -= 8;</span>
        </p>
      </td>
    </tr>
  </tbody>
</table>
<p>
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="78"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/76a43019633f4f8b91cce6dbb4d8089c.png"
      src="https://i-blog.csdnimg.cn/direct/76a43019633f4f8b91cce6dbb4d8089c.png"
      width="830"
      height="306"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2F76a43019633f4f8b91cce6dbb4d8089c.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22830%22%2C%22height%22%3A%22306%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  >&nbsp;
</p>
<h3 style="margin-left: 0.0001pt; margin-right: 0px; text-align: justify">
  2.3.2 仿真结果
</h3>
<ul>
  <li style="text-align: justify">
    <span style="color: #000000"
      >第 0 条指令：addi r0, r0, 10，R0 += 10，最后 R0 = 10。</span
    ><span style="color: #000000"></span>
  </li>
  <li style="text-align: justify">
    <table align="center" border="1" cellspacing="0" style="width: 99.96%">
      <tbody>
        <tr>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">序号</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">地址 A</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">指令</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">状态机</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 14.34%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">控制位 C</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">总线</span
              ><span style="color: #000000">B</span
              ><span style="color: #000000">US</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 20.84%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">结果</span>
            </p>
          </td>
        </tr>
        <tr>
          <td
            rowspan="5"
            style="height: 14pt; vertical-align: center; width: 12.94%"
          >
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">0</span>
            </p>
          </td>
          <td
            rowspan="5"
            style="height: 14pt; vertical-align: center; width: 12.94%"
          >
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">0000</span>
            </p>
          </td>
          <td
            rowspan="5"
            style="height: 14pt; vertical-align: center; width: 12.94%"
          >
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">2821</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">S</span
              ><span style="color: #000000">0</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 14.34%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">000 0</span
              ><span style="color: #000000">104</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">0000</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 20.84%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">写 AR：0000</span>
            </p>
          </td>
        </tr>
        <tr>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">S</span
              ><span style="color: #000000">1</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 14.34%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">000 00</span
              ><span style="color: #000000">42</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">2821</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 20.84%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">取指令，写</span
              ><span style="color: #000000">入</span
              ><span style="color: #000000">IR</span
              ><span style="color: #000000">：2821</span>
            </p>
          </td>
        </tr>
        <tr>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">S</span
              ><span style="color: #000000">2</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 14.34%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">00</span
              ><span style="color: #000000">5 0000</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">0000</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 20.84%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">R0-&gt;DR0</span>
            </p>
          </td>
        </tr>
        <tr>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">S</span
              ><span style="color: #000000">5</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 14.34%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">00</span
              ><span style="color: #000000">2 0001</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">000A</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 20.84%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">10-&gt;DR1</span>
            </p>
          </td>
        </tr>
        <tr>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">S</span
              ><span style="color: #000000">4</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 14.34%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">0</span
              ><span style="color: #000000">20 9210</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 12.94%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">000A</span>
            </p>
          </td>
          <td style="height: 14pt; vertical-align: center; width: 20.84%">
            <p
              style="margin-left: 0.0001pt; margin-right: 0; text-align: center"
            >
              <span style="color: #000000">做加法</span
              ><span style="color: #000000">,</span
              ><span style="color: #000000">结果</span
              ><span style="color: #000000">写回 R0</span>
            </p>
          </td>
        </tr>
      </tbody>
    </table>
  </li>
</ul>
<p>
  <span
    tabindex="-1"
    contenteditable="false"
    data-cke-widget-wrapper="1"
    data-cke-filter="off"
    class="cke_widget_wrapper cke_widget_inline cke_widget_image cke_image_nocaption"
    data-cke-display-name="图像"
    data-cke-widget-id="102"
    role="region"
    aria-label=" 图像 小部件"
    ><img
      data-cke-saved-src="https://i-blog.csdnimg.cn/direct/a1782cb543be4b938acf0dd2773c79ef.png"
      src="https://i-blog.csdnimg.cn/direct/a1782cb543be4b938acf0dd2773c79ef.png"
      width="830"
      height="325"
      data-cke-widget-data="%7B%22hasCaption%22%3Afalse%2C%22src%22%3A%22https%3A%2F%2Fi-blog.csdnimg.cn%2Fdirect%2Fa1782cb543be4b938acf0dd2773c79ef.png%22%2C%22alt%22%3A%22%22%2C%22width%22%3A%22830%22%2C%22height%22%3A%22325%22%2C%22lock%22%3Atrue%2C%22align%22%3A%22none%22%2C%22classes%22%3Anull%7D"
      data-cke-widget-upcasted="1"
      data-cke-widget-keep-attr="0"
      data-widget="image"
      class="cke_widget_element"
      isbindedload="true"
      alt=""
    /></span
  >&nbsp;
</p>
<p>后面的仿真结果省略………………<br /></p>
<p>&nbsp;</p>
