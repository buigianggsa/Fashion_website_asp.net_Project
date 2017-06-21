<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="DangKi.aspx.cs" Inherits="Web_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">
    <div style="border:1px solid black; width:350px;">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Câu trả lời bảo mật:" 
        AnswerRequiredErrorMessage="Bắt buộc phải trả lời câu hỏi bảo mật." 
        CompleteSuccessText="Tài khoản của bạn đã được tạo thành công." 
        ConfirmPasswordCompareErrorMessage="Mật khẩu và xác nhận mật khẩu phải trùng nhau." 
        ConfirmPasswordLabelText="Nhập lại mật khẩu:" ConfirmPasswordRequiredErrorMessage="Bắt buộc phải xác nhận mật khẩu" 
        CreateUserButtonText="Tạo tài khoản" 
        DuplicateEmailErrorMessage="Địa chỉ email này đã được sử dụng. Vui lòng nhập lại email khác." 
        DuplicateUserNameErrorMessage="Vui lòng nhập tên đăng nhập khác." 
        EmailRegularExpressionErrorMessage="Vui lòng nhập một e-mail khác." EmailRequiredErrorMessage="E-mail là cần thiết." 
        InvalidAnswerErrorMessage="Vui lòng nhập câu trả lời bảo mật khác ." 
        InvalidEmailErrorMessage="Vui lòng nhập địa chỉ email hợp lệ." 
        InvalidPasswordErrorMessage="Độ dài mật khẩu tối thiểu:{0}, Chứa kí tự đặc biệt:{1}." 
        InvalidQuestionErrorMessage="Vui lòng nhập câu hỏi bảo mật khác." PasswordLabelText="Mật khẩu:" 
        PasswordRegularExpressionErrorMessage="Vui lòng nhập lại mật khẩu." PasswordRequiredErrorMessage="Mật khẩu là cần thiết." 
        QuestionLabelText="Câu hỏi bảo mật:" QuestionRequiredErrorMessage="Câu hỏi bảo mật là cần thiết:" 
        UnknownErrorMessage="Tạo tài khoản không thành công. Vui lòng thử lại." UserNameLabelText="Tên đăng nhập:" 
        UserNameRequiredErrorMessage="Tên đăng nhập là cần thiết." Width="348px">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" >
                <ContentTemplate>
                    <table style="width: 350px" >
                        <tr style="background-color:#b108d9; width:350px;">
                            <td align="center" colspan="2" style="height: 39px" class="auto-style5"><h2 style="color:white;">ĐĂNG KÝ TÀI KHOẢN</h2></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Tên đăng nhập:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Tên đăng nhập là cần thiết." ForeColor="Red" ToolTip="Tên đăng nhập là cần thiết." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mật khẩu:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Mật khẩu là cần thiết." ForeColor="Red" ToolTip="Mật khẩu là cần thiết." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Nhập lại mật khẩu:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Bắt buộc phải xác nhận mật khẩu" ForeColor="Red" ToolTip="Bắt buộc phải xác nhận mật khẩu" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail là cần thiết." ForeColor="Red" ToolTip="E-mail là cần thiết." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Câu hỏi bảo mật:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Câu hỏi bảo mật là cần thiết:" ForeColor="Red" ToolTip="Câu hỏi bảo mật là cần thiết:" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Câu trả lời bảo mật:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Bắt buộc phải trả lời câu hỏi bảo mật." ForeColor="Red" ToolTip="Bắt buộc phải trả lời câu hỏi bảo mật." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Mật khẩu và xác nhận mật khẩu phải trùng nhau." ForeColor="Red" ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                    
                    
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    </div>
</asp:Content>

