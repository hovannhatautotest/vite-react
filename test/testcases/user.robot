*** Settings ***
Resource            ../keywords/common.robot

Test Setup          Setup
Test Teardown       Tear Down


*** Test Cases ***
DA-01 Verify that Đăng nhập successfully with valid Email and Mật khẩu User
    [Tags]    @smoketest    @regression
    Then CRU-24


*** Keywords ***
Go to page create data
    When Login to admin
    When Click "Người Dùng" menuUser
    When Click "Tạo mới" button

Go to page view data
    When Login to admin
    When Click "Người Dùng" menuUser
    # When Click "Người Dùng" sub menu to "/vn/user/list"
    # When Click "Danh sách " sub menu to "/vn/user/list"

Background Happy paths
    When Go to page create data
    When Enter "text" in "Họ và tên" with "_RANDOM_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "text" in "Mật khẩu" with "Password1!"
    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Enter date in "Ngày sinh" with "_RANDOM_"
    When Click select "Vị trí" with "Tester"
    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
    When Click select "Vai trò" with "Supper Admin"
    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
    When Select file in "Tải ảnh lên" with "image.jpg"
    When Click "Lưu lại" button
    Then User look message "Tạo thành công" popup
    When Click "Huỷ bỏ" button

# CRU-05
#    When Go to page create data
#    Sleep    2
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Họ và tên" displayed under "Xin vui lòng nhập họ và tên" field
#    When Click "Huỷ bỏ" button

# CRU-05
#    When Go to page create data
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Họ và tên" displayed under "Xin vui lòng nhập họ và tên" field
#    When Click "Huỷ bỏ" button

# CRU-06
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập email" field
#    When Click "Huỷ bỏ" button

# CRU-06
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập email" field
#    When Click "Huỷ bỏ" button

# CRU-07
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
#    When Click "Huỷ bỏ" button

# CRU-07
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
#    When Click "Huỷ bỏ" button

# CRU-08
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Nhập lại mật khẩu" displayed under "Xin vui lòng nhập nhập lại mật khẩu" field
#    When Click "Huỷ bỏ" button

# CRU-08
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Nhập lại mật khẩu" displayed under "Xin vui lòng nhập nhập lại mật khẩu" field
#    When Click "Huỷ bỏ" button

# CRU-09
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Số điện thoại" displayed under "Xin vui lòng nhập số điện thoại" field
#    When Click "Huỷ bỏ" button

# CRU-09
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Số điện thoại" displayed under "Xin vui lòng nhập số điện thoại" field
#    When Click "Huỷ bỏ" button

# CRU-10
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Ngày sinh" displayed under "Xin vui lòng chọn ngày sinh" field
#    When Click "Huỷ bỏ" button

# CRU-10
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Ngày sinh" displayed under "Xin vui lòng chọn ngày sinh" field
#    When Click "Huỷ bỏ" button

# CRU-11
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Vị trí" displayed under "Xin vui lòng chọn vị trí" field
#    When Click "Huỷ bỏ" button

# CRU-11
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Vị trí" displayed under "Xin vui lòng chọn vị trí" field
#    When Click "Huỷ bỏ" button

# CRU-12
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Ngày đầu đi làm" displayed under "Xin vui lòng chọn ngày đầu đi làm" field
#    When Click "Huỷ bỏ" button

# CRU-12
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Click select "Vai trò" with "Supper Admin"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Ngày đầu đi làm" displayed under "Xin vui lòng chọn ngày đầu đi làm" field
#    When Click "Huỷ bỏ" button

# CRU-13
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu lại" button
#    Then Required message "Vai trò" displayed under "Xin vui lòng chọn vai trò" field
#    When Click "Huỷ bỏ" button

# CRU-13
#    When Go to page create data
#    When Enter "text" in "Họ và tên" with "_RANDOM_"
#    When Enter "email" in "Email" with "_RANDOM_"
#    When Enter "text" in "Mật khẩu" with "Password1!"
#    When Enter "text" in "Nhập lại mật khẩu" with "Password1!"
#    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
#    When Enter date in "Ngày sinh" with "_RANDOM_"
#    When Click select "Vị trí" with "Tester"
#    When Enter date in "Ngày đầu đi làm" with "_RANDOM_"
#    When Enter "words" in textarea "Mô tả" with "_RANDOM_"
#    When Select file in "Tải ảnh lên" with "image.jpg"
#    When Click "Lưu và tạo mới" button
#    Then Required message "Vai trò" displayed under "Xin vui lòng chọn vai trò" field
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with "HD12gmail"
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with "@gmail.com"
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with "?>.<.com"
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with "testing123@mailcom"
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with "hoang.dieu@gmail.com"
#    When Click "Lưu lại" button
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with "Testing.@gmail.com "
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with "HaAnh,123@gmail.com"
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with " Tester@gmail@.com"
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
#    When Click "Huỷ bỏ" button

# CRU-15
#    When Go to page create data
#    When Enter "email" in "Email" with " Tester @gmail.com"
#    When Click "Lưu lại" button
#    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
#    When Click "Huỷ bỏ" button

# CRU-16
#    When Go to page create data
#    When Enter "text" in "Mật khẩu" with "Halan3112."
#    When Enter "text" in "Nhập lại mật khẩu" with "HALNA3112"
#    When Click "Lưu lại" button
#    Then Required message "Nhập lại mật khẩu" displayed under "Hai mật khẩu bạn nhập không nhất quán!" field1
#    Then Required message "Nhập lại mật khẩu" displayed under "Mật khẩu yêu cầu có 8 ký tự trở lên, có ít nhất 1 chữ hoa, 1 chữ thường, 1 chữ số và 1 kí tự đặc biệt" field1
#    When Click "Huỷ bỏ" button

# CRU-17
#    When Go to page create data
#    When Enter "text" in "Mật khẩu" with "1234"
#    When Click "Lưu lại" button
#    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập tối thiểu 6 ký tự!" field1
#    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập tối thiểu 6 ký tự số!" field1
#    When Click "Huỷ bỏ" button

# CRU-18
#    When Go to page create data
#    When Enter "phone" in "Số điện thoại" with "1234"
#    When Click "Lưu lại" button
#    Then Required message "Số điện thoại" displayed under "Xin vui lòng nhập tối thiểu 8 ký tự số!" field
#    When Click "Huỷ bỏ" button

# CRU-19
#    When Go to page create data
#    When Enter "text" in "Mật khẩu" with "1234123412341234"
#    When Click "Lưu lại" button
#    Then Required message "Mật khẩu" displayed under "Mật khẩu yêu cầu có 8 ký tự trở lên, có ít nhất 1 chữ hoa, 1 chữ thường, 1 chữ số và 1 kí tự đặc biệt" field
#    When Click "Huỷ bỏ" button

# CRU-19
#    When Go to page create data
#    When Enter "phone" in "Số điện thoại" with "1234123412341234"
#    When Click "Lưu lại" button
#    Then Required message "Số điện thoại" displayed under "Xin vui lòng nhập tối đa phải có 12 ký tự số!" field
#    When Click "Huỷ bỏ" button

# CRU-20
#    When Go to page create data
#    When Enter "phone" in "Số điện thoại" with "392dh74"
#    When Click "Lưu lại" button
#    Then Required message "Số điện thoại" displayed under "Xin vui lòng chỉ nhập số" field
#    When Click "Huỷ bỏ" button

# CRU-24
#    When Go to page create data
#    Sleep    2
#    When Enter "Vai trò" add2 with "Guest"
#    Sleep    2

# CRU-24
#    When Go to page create data
#    Sleep    2
#    When Enter "Vị trí" add with "1234"
#    Sleep    4
#    When Required message under "Trống" field2

CRU-24
    When Go to page create data
    Sleep    2
    When Enter "Vị trí" add with "Dev"
    Sleep    2
    When Required message under "Developer" field3
# CRU-51
#    When Go to page view data
#    When Click on "1" Role
#    Then Table on "lê văn vũ quốc" User
#    Then Table on "Staff" User
#    Then Table on "Lê ngọc Minh An" User
#    Then Table on "lvvq@gmail.com" User
#    Then Table on "0772222222" User
#    Then Table on "01-06-2023" User
#    Sleep    7 seconds

# CRU-52
#    When Go to page view data
#    When Click on "2" Role
#    Then Table on "Nguyễn Văn Bê" User
#    Then Table on "Developer" User
#    Then Table on "testing,Tester 3,Tester2,Nhân viên thực tập,Tester2,Automation Testing,developer" User
#    Sleep    7 seconds

# CRU-53
#    When Go to page view data
#    When Click on "3" Role
#    Then Table on "Hồ Đức Tâm Linh_admin" User
#    Then Table on "Hồ Đức Tâm Linh" User
#    Then Table on "Nhân viên thực tập,Intern" User
#    Then Table on "hodutali@husc.edu.vn" User
#    Then Table on "49238498641" User
#    Then Table on "Developer" User
#    Sleep    7 seconds

# CRU-54
#    When Go to page view data
#    Sleep    4 seconds
#    When Enter "Tìm kiếm" placeholder with "Diệu"
#    Sleep    4 seconds
# CRU-55
#    When Go to page view data
#    Sleep    4 seconds
#    When Enter "Tìm kiếm" placeholder with "45687"
#    Sleep    4 seconds

# SLM-22
#    When Go to page view data
#    Sleep    4 seconds
#    When Click on "next" pagination
#    Sleep    4 seconds

# SLM-22
#    When Go to page view data
#    Sleep    4 seconds
#    When Click on "prev" pagination
#    Sleep    4 seconds

# SLM-22
#    When Go to page view data
#    Sleep    4 seconds
#    When Click on "next_10" doublepagination
#    Sleep    4 seconds

# SLM-22
#    When Go to page view data
#    Sleep    4 seconds
#    When Click on "prev_10" doublepagination
#    Sleep    4 seconds

# CRU-58
#    When Go to page view data
#    When Click "24" pagination
#    Sleep    6
