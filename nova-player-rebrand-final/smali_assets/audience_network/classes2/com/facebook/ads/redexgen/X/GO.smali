.class public final Lcom/facebook/ads/redexgen/X/GO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/GP;->A04(ILcom/facebook/ads/redexgen/X/qI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/qI;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/GP;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GP;ILcom/facebook/ads/redexgen/X/qI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37082
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GO;->A02:Lcom/facebook/ads/redexgen/X/GP;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/GO;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GO;->A01:Lcom/facebook/ads/redexgen/X/qI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 37083
    return-void
.end method
