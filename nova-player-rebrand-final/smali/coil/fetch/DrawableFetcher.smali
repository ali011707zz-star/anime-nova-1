.class public final Lcoil/fetch/DrawableFetcher;
.super Ljava/lang/Object;
.source "DrawableFetcher.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# instance fields
.field private final drawableDecoder:Lcoil/decode/DrawableDecoderService;


# direct methods
.method public constructor <init>(Lcoil/decode/DrawableDecoderService;)V
    .locals 1

    const-string v0, "drawableDecoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/fetch/DrawableFetcher;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    return-void
.end method


# virtual methods
.method public fetch(Lcoil/bitmap/BitmapPool;Landroid/graphics/drawable/Drawable;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 22
    invoke-static {p2}, Lcoil/util/-Extensions;->isVector(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    .line 23
    new-instance p5, Lcoil/fetch/DrawableResult;

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcoil/fetch/DrawableFetcher;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    .line 27
    invoke-virtual {p4}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 29
    invoke-virtual {p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v4

    .line 30
    invoke-virtual {p4}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v5

    move-object v1, p2

    move-object v3, p3

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 31
    invoke-virtual {p4}, Lcoil/decode/Options;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 48
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p4, "context.resources"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p4, p3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p2, p4

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 36
    :goto_0
    sget-object p3, Lcoil/decode/DataSource;->MEMORY:Lcoil/decode/DataSource;

    .line 23
    invoke-direct {p5, p2, p1, p3}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    return-object p5
.end method

.method public bridge synthetic fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcoil/fetch/DrawableFetcher;->fetch(Lcoil/bitmap/BitmapPool;Landroid/graphics/drawable/Drawable;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcoil/fetch/Fetcher$DefaultImpls;->handles(Lcoil/fetch/Fetcher;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcoil/fetch/DrawableFetcher;->handles(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

.method public key(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic key(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 12
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcoil/fetch/DrawableFetcher;->key(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
