.class public final Lcoil/EventListener$Companion$NONE$1;
.super Ljava/lang/Object;
.source "EventListener.kt"

# interfaces
.implements Lcoil/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeEnd(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;Lcoil/decode/DecodeResult;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2, p3, p4}, Lcoil/EventListener$DefaultImpls;->decodeEnd(Lcoil/EventListener;Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;Lcoil/decode/DecodeResult;)V

    return-void
.end method

.method public decodeStart(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2, p3}, Lcoil/EventListener$DefaultImpls;->decodeStart(Lcoil/EventListener;Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;)V

    return-void
.end method

.method public fetchEnd(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;Lcoil/fetch/FetchResult;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2, p3, p4}, Lcoil/EventListener$DefaultImpls;->fetchEnd(Lcoil/EventListener;Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;Lcoil/fetch/FetchResult;)V

    return-void
.end method

.method public fetchStart(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2, p3}, Lcoil/EventListener$DefaultImpls;->fetchStart(Lcoil/EventListener;Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;)V

    return-void
.end method

.method public mapEnd(Lcoil/request/ImageRequest;Ljava/lang/Object;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Lcoil/EventListener$DefaultImpls;->mapEnd(Lcoil/EventListener;Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    return-void
.end method

.method public mapStart(Lcoil/request/ImageRequest;Ljava/lang/Object;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Lcoil/EventListener$DefaultImpls;->mapStart(Lcoil/EventListener;Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    return-void
.end method

.method public onCancel(Lcoil/request/ImageRequest;)V
    .locals 0

    .line 187
    invoke-static {p0, p1}, Lcoil/EventListener$DefaultImpls;->onCancel(Lcoil/EventListener;Lcoil/request/ImageRequest;)V

    return-void
.end method

.method public onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Lcoil/EventListener$DefaultImpls;->onError(Lcoil/EventListener;Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onStart(Lcoil/request/ImageRequest;)V
    .locals 0

    .line 187
    invoke-static {p0, p1}, Lcoil/EventListener$DefaultImpls;->onStart(Lcoil/EventListener;Lcoil/request/ImageRequest;)V

    return-void
.end method

.method public onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Lcoil/EventListener$DefaultImpls;->onSuccess(Lcoil/EventListener;Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    return-void
.end method

.method public resolveSizeEnd(Lcoil/request/ImageRequest;Lcoil/size/Size;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Lcoil/EventListener$DefaultImpls;->resolveSizeEnd(Lcoil/EventListener;Lcoil/request/ImageRequest;Lcoil/size/Size;)V

    return-void
.end method

.method public resolveSizeStart(Lcoil/request/ImageRequest;)V
    .locals 0

    .line 187
    invoke-static {p0, p1}, Lcoil/EventListener$DefaultImpls;->resolveSizeStart(Lcoil/EventListener;Lcoil/request/ImageRequest;)V

    return-void
.end method

.method public transformEnd(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Lcoil/EventListener$DefaultImpls;->transformEnd(Lcoil/EventListener;Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public transformStart(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Lcoil/EventListener$DefaultImpls;->transformStart(Lcoil/EventListener;Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public transitionEnd(Lcoil/request/ImageRequest;)V
    .locals 0

    .line 187
    invoke-static {p0, p1}, Lcoil/EventListener$DefaultImpls;->transitionEnd(Lcoil/EventListener;Lcoil/request/ImageRequest;)V

    return-void
.end method

.method public transitionStart(Lcoil/request/ImageRequest;)V
    .locals 0

    .line 187
    invoke-static {p0, p1}, Lcoil/EventListener$DefaultImpls;->transitionStart(Lcoil/EventListener;Lcoil/request/ImageRequest;)V

    return-void
.end method
