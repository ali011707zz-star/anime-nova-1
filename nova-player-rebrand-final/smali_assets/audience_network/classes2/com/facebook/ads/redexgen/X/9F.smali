.class public interface abstract Lcom/facebook/ads/redexgen/X/9F;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioTrackBufferSizeProvider"
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/9F;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 542
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Q;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9Q;-><init>()V

    .line 543
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Q;->A06()Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9F;->A00:Lcom/facebook/ads/redexgen/X/9F;

    .line 544
    return-void
.end method


# virtual methods
.method public abstract A75(IIIIIID)I
.end method
