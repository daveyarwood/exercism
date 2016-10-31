object HelloWorld {
  fun hello(maybeName: String? = "World"): String {
    val name: String

    if (maybeName.isNullOrBlank()) {
      name = "World"
    } else {
      name = maybeName!!
    }

    return "Hello, $name!"
  }
}
