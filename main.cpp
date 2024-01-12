#include "rapidjson/document.h"
#include "rapidjson/writer.h"
#include "rapidjson/stringbuffer.h"
#include <iostream>

int main() {
    rapidjson::Document document;
    document.SetObject(); // Ensure it's an object

    rapidjson::Document::AllocatorType &allocator = document.GetAllocator();

    // Add fields
    document.AddMember("name", "John Doe", allocator);
    document.AddMember("age", 30, allocator);

    rapidjson::StringBuffer buffer;
    rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

    document.Accept(writer);

    std::string jsonString = buffer.GetString();
    std::cout << jsonString << std::endl;

    return 0;
}