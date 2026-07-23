.class public final Lcoil/fetch/BitmapFetcher;
.super Ljava/lang/Object;
.source "BitmapFetcher.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    new-instance p1, Lcoil/fetch/DrawableResult;

    .line 21
    invoke-virtual {p4}, Lcoil/decode/Options;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 48
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p4, "context.resources"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p4, p3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    .line 23
    sget-object p3, Lcoil/decode/DataSource;->MEMORY:Lcoil/decode/DataSource;

    .line 20
    invoke-direct {p1, p4, p2, p3}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    return-object p1
.end method

.method public bridge synthetic fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lcoil/fetch/BitmapFetcher;->fetch(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcoil/fetch/Fetcher$DefaultImpls;->handles(Lcoil/fetch/Fetcher;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcoil/fetch/BitmapFetcher;->handles(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public key(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic key(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 10
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcoil/fetch/BitmapFetcher;->key(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
