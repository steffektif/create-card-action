import com.github.kittinunf.fuel.Fuel

fun main(args: Array<String>) {
    Fuel.post("https://webhook.site/6822179a-c255-43cd-bdc3-50be8ca415f6").body("hi!").response()
}