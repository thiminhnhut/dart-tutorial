# Package

## Quản lý package trong Dart

- Một số ứng dụng hoặc chương trình có thể cần sử dụng các thư viện từ bên ngoài
  để phát triển ứng dụng.

- Việc sử dụng các package này trong Dart được quản lý bởi `pub`.

- Khai báo các package cần sử dụng trong file `pubspec.yaml`. Ví dụ:

  ```yaml
  name: 'vector_victor'
  version: 0.0.1
  description: An absolute bare-bones web app.
  ...
  dependencies: browser: '>=0.10.0 <0.11.0'
  ```

- `pub` command line:

  | Command       | Mô tả                          |
  | ------------- | ------------------------------ |
  | `pub get`     | Cài đặt các package cần thiết  |
  | `pub upgrade` | Cập nhật các package cần thiết |
  | `pub build`   | Build ứng dụng                 |
  | `pub help`    | Hiển thị các lệnh hỗ trợ       |
