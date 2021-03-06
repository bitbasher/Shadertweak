constexpr sampler sampler2d(coord::normalized, filter::linear, address::repeat);

fragment half4 fragment_texture(
    ProjectedVertex in [[stage_in]],
    constant Uniforms &uniforms [[buffer(0)]],
    texture2d<float, access::sample> texture0 [[texture(0)]],
    texture2d<float, access::sample> texture1 [[texture(1)]],
    texture2d<float, access::sample> texture2 [[texture(2)]],
    texture2d<float, access::sample> texture3 [[texture(3)]])
{
    return half4(half2(in.texCoords), abs(cos(iGlobalTime)), 1);
}
