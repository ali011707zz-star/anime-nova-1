.class public final Lcom/facebook/ads/redexgen/X/ER;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "NEW_CLASS"
    }
    value = "Encapsulate error info from subtitle decoder"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleDecoderErrorInfo"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/qI;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/qI;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 34767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34768
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ER;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 34769
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ER;->A01:Ljava/lang/Throwable;

    .line 34770
    return-void
.end method
