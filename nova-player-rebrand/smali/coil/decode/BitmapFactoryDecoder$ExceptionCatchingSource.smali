.class final Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;
.super Lokio/ForwardingSource;
.source "BitmapFactoryDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/decode/BitmapFactoryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExceptionCatchingSource"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Exception;
    .locals 1

    .line 279
    iget-object v0, p0, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 286
    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->exception:Ljava/lang/Exception;

    .line 287
    throw p1
.end method
