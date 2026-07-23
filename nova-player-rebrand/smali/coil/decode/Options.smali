.class public final Lcoil/decode/Options;
.super Ljava/lang/Object;
.source "Options.kt"


# instance fields
.field private final allowInexactSize:Z

.field private final allowRgb565:Z

.field private final colorSpace:Landroid/graphics/ColorSpace;

.field private final config:Landroid/graphics/Bitmap$Config;

.field private final context:Landroid/content/Context;

.field private final diskCachePolicy:Lcoil/request/CachePolicy;

.field private final headers:Lokhttp3/Headers;

.field private final memoryCachePolicy:Lcoil/request/CachePolicy;

.field private final networkCachePolicy:Lcoil/request/CachePolicy;

.field private final parameters:Lcoil/request/Parameters;

.field private final premultipliedAlpha:Z

.field private final scale:Lcoil/size/Scale;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Scale;ZZZLokhttp3/Headers;Lcoil/request/Parameters;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryCachePolicy"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diskCachePolicy"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCachePolicy"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcoil/decode/Options;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcoil/decode/Options;->config:Landroid/graphics/Bitmap$Config;

    .line 43
    iput-object p3, p0, Lcoil/decode/Options;->colorSpace:Landroid/graphics/ColorSpace;

    .line 44
    iput-object p4, p0, Lcoil/decode/Options;->scale:Lcoil/size/Scale;

    .line 45
    iput-boolean p5, p0, Lcoil/decode/Options;->allowInexactSize:Z

    .line 46
    iput-boolean p6, p0, Lcoil/decode/Options;->allowRgb565:Z

    .line 47
    iput-boolean p7, p0, Lcoil/decode/Options;->premultipliedAlpha:Z

    .line 48
    iput-object p8, p0, Lcoil/decode/Options;->headers:Lokhttp3/Headers;

    .line 49
    iput-object p9, p0, Lcoil/decode/Options;->parameters:Lcoil/request/Parameters;

    .line 50
    iput-object p10, p0, Lcoil/decode/Options;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 51
    iput-object p11, p0, Lcoil/decode/Options;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 52
    iput-object p12, p0, Lcoil/decode/Options;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcoil/decode/Options;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcoil/decode/Options;->context:Landroid/content/Context;

    check-cast p1, Lcoil/decode/Options;

    iget-object v2, p1, Lcoil/decode/Options;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcoil/decode/Options;->config:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcoil/decode/Options;->config:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcoil/decode/Options;->colorSpace:Landroid/graphics/ColorSpace;

    iget-object v2, p1, Lcoil/decode/Options;->colorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    :cond_1
    iget-object v1, p0, Lcoil/decode/Options;->scale:Lcoil/size/Scale;

    iget-object v2, p1, Lcoil/decode/Options;->scale:Lcoil/size/Scale;

    if-ne v1, v2, :cond_2

    .line 78
    iget-boolean v1, p0, Lcoil/decode/Options;->allowInexactSize:Z

    iget-boolean v2, p1, Lcoil/decode/Options;->allowInexactSize:Z

    if-ne v1, v2, :cond_2

    .line 79
    iget-boolean v1, p0, Lcoil/decode/Options;->allowRgb565:Z

    iget-boolean v2, p1, Lcoil/decode/Options;->allowRgb565:Z

    if-ne v1, v2, :cond_2

    .line 80
    iget-boolean v1, p0, Lcoil/decode/Options;->premultipliedAlpha:Z

    iget-boolean v2, p1, Lcoil/decode/Options;->premultipliedAlpha:Z

    if-ne v1, v2, :cond_2

    .line 81
    iget-object v1, p0, Lcoil/decode/Options;->headers:Lokhttp3/Headers;

    iget-object v2, p1, Lcoil/decode/Options;->headers:Lokhttp3/Headers;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcoil/decode/Options;->parameters:Lcoil/request/Parameters;

    iget-object v2, p1, Lcoil/decode/Options;->parameters:Lcoil/request/Parameters;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcoil/decode/Options;->memoryCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/decode/Options;->memoryCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_2

    .line 84
    iget-object v1, p0, Lcoil/decode/Options;->diskCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/decode/Options;->diskCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_2

    .line 85
    iget-object v1, p0, Lcoil/decode/Options;->networkCachePolicy:Lcoil/request/CachePolicy;

    iget-object p1, p1, Lcoil/decode/Options;->networkCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final getAllowInexactSize()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcoil/decode/Options;->allowInexactSize:Z

    return v0
.end method

.method public final getAllowRgb565()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcoil/decode/Options;->allowRgb565:Z

    return v0
.end method

.method public final getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 43
    iget-object v0, p0, Lcoil/decode/Options;->colorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 42
    iget-object v0, p0, Lcoil/decode/Options;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 41
    iget-object v0, p0, Lcoil/decode/Options;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDiskCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 51
    iget-object v0, p0, Lcoil/decode/Options;->diskCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 48
    iget-object v0, p0, Lcoil/decode/Options;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final getNetworkCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 52
    iget-object v0, p0, Lcoil/decode/Options;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getParameters()Lcoil/request/Parameters;
    .locals 1

    .line 49
    iget-object v0, p0, Lcoil/decode/Options;->parameters:Lcoil/request/Parameters;

    return-object v0
.end method

.method public final getPremultipliedAlpha()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcoil/decode/Options;->premultipliedAlpha:Z

    return v0
.end method

.method public final getScale()Lcoil/size/Scale;
    .locals 1

    .line 44
    iget-object v0, p0, Lcoil/decode/Options;->scale:Lcoil/size/Scale;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 89
    iget-object v0, p0, Lcoil/decode/Options;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget-object v1, p0, Lcoil/decode/Options;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v1, p0, Lcoil/decode/Options;->colorSpace:Landroid/graphics/ColorSpace;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcoil/decode/Options$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ColorSpace;)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget-object v1, p0, Lcoil/decode/Options;->scale:Lcoil/size/Scale;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-boolean v1, p0, Lcoil/decode/Options;->allowInexactSize:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-boolean v1, p0, Lcoil/decode/Options;->allowRgb565:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-boolean v1, p0, Lcoil/decode/Options;->premultipliedAlpha:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-object v1, p0, Lcoil/decode/Options;->headers:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v1, p0, Lcoil/decode/Options;->parameters:Lcoil/request/Parameters;

    invoke-virtual {v1}, Lcoil/request/Parameters;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v1, p0, Lcoil/decode/Options;->memoryCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v1, p0, Lcoil/decode/Options;->diskCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v1, p0, Lcoil/decode/Options;->networkCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Options(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/decode/Options;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/decode/Options;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/decode/Options;->colorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/decode/Options;->scale:Lcoil/size/Scale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowInexactSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean v1, p0, Lcoil/decode/Options;->allowInexactSize:Z

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", allowRgb565="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean v1, p0, Lcoil/decode/Options;->allowRgb565:Z

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", premultipliedAlpha="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean v1, p0, Lcoil/decode/Options;->premultipliedAlpha:Z

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", headers="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcoil/decode/Options;->headers:Lokhttp3/Headers;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", parameters="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcoil/decode/Options;->parameters:Lcoil/request/Parameters;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", memoryCachePolicy="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcoil/decode/Options;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", diskCachePolicy="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcoil/decode/Options;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", networkCachePolicy="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcoil/decode/Options;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
