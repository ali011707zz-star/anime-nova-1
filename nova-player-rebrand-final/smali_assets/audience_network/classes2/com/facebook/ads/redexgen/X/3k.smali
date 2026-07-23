.class public interface abstract Lcom/facebook/ads/redexgen/X/3k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3j;,
        Lcom/facebook/ads/redexgen/X/3i;
    }
.end annotation


# static fields
.field public static final A00:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract A57(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/3i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3j;
        }
    .end annotation
.end method

.method public abstract A8d()Ljava/nio/ByteBuffer;
.end method

.method public abstract AAL()Z
.end method

.method public abstract AAP()Z
.end method

.method public abstract AHG()V
.end method

.method public abstract AHH(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract flush()V
.end method
