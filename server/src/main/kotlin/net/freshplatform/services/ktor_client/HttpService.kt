package net.freshplatform.services.ktor_client

import io.ktor.client.*
import io.ktor.client.plugins.*
import io.ktor.client.plugins.cache.*
import io.ktor.client.plugins.contentnegotiation.*
import io.ktor.client.plugins.logging.*
import io.ktor.serialization.kotlinx.json.*
import net.freshplatform.utils.getEnvironmentVariables

object HttpService {
    val client: HttpClient by lazy {
        HttpClient {
            install(ContentNegotiation) {
                json()
            }
            install(HttpTimeout)
            install(HttpCache)
            install(Logging) {
                level = if (getEnvironmentVariables().isProductionMode) LogLevel.INFO else LogLevel.ALL
            }
        }
    }
}