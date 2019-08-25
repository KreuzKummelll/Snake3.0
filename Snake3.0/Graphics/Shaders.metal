#include <metal_stdlib>
using namespace metal;

struct Vertex {
    float3 position [[ attribute(0) ]];
    float2 textureCoordinate [[ attribute(1) ]];
};

struct SceneConstants {
    float4x4 viewMatrix;
    float4x4 projectionMatrix;
};

struct ModelConstants {
    float4x4 modelMatrix;
};

struct RasterizerData {
    float4 position [[ position ]];
    float2 textureCoordinate;
    float3 worldPosition;
};

vertex RasterizerData vertex_shader(Vertex vIn [[ stage_in ]]) {
    RasterizerData rd;
    
//    float4 worldPosition = float4(vIn.position, 1.0);
    rd.position = float4(vIn.position, 1.0);
//    rd.textureCoordinate = vIn.textureCoordinate;
//    rd.worldPosition = worldPosition.xyz;
    
    return rd;
}

fragment half4 fragment_shader(RasterizerData rd [[ stage_in ]]) {
    float4 color = float4(1,0,0,1);
    
    return half4(color);
}