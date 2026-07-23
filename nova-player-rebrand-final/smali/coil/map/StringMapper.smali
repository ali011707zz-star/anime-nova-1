.class public final Lcoil/map/StringMapper;
.super Ljava/lang/Object;
.source "StringMapper.kt"

# interfaces
.implements Lcoil/map/Mapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcoil/map/StringMapper;->handles(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcoil/map/Mapper$DefaultImpls;->handles(Lcoil/map/Mapper;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public map(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "parse(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcoil/map/StringMapper;->map(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
