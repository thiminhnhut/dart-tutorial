# Một số cú pháp cơ bản trong ngôn ngữ lập trình Dart

- Nguồn tham khảo: [Biến (Variable) trong ngôn ngữ Dart](https://openplanning.net/13913/dart-variables)

## Khai báo biến

1. Khai báo biến với từ khóa `var`:

    ```dart
    var name = 'Thi Minh Nhut';
    var age = 30;
    var height = 1.75;
    ```

1. Khai báo biến từ khóa `dynamic`

    ```dart
    dynamic name = 'Thi Minh Nhut';
    name = 10;
    ```

    - Biến được khai báo với từ khóa `dynamic` thì có thể thay đổi kiểu dữ liệu được.

    - Biến được khai báo với từ khóa `var` thì không thể thay đổi kiểu dữ liệu.

1. Khai báo biến với kiểu dữ liệu cụ thể

    ```dart
    String name = 'Thi Minh Nhut';
    int age = 30;
    double height = 1.75;
    ```

1. Khai báo biến với từ khóa `final`

    - Với biến được khai báo bằng từ khóa `final`, chúng ta chỉ có thể gán giá trị cho
      biến này nhiều nhất là 1 lần (giúp cho chúng ta tránh việc gán giá trị mới
      cho biến đã có giá trị).

    - Ví dụ:

        ```dart
        final name;
        name = 'Thi Minh Nhut'; // OK
        name = 'Thi Minh Nhut 2'; // Error
        ```

1. Khai báo biến với từ khóa `const`:

    ```dart
    const name = 'Thi Minh Nhut';
    ```

    - Khi khai báo biến với từ khóa `const` chúng ta không thể thay đổi giá trị của biến.
