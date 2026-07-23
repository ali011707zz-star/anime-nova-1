.class public final Lcom/facebook/ads/redexgen/X/FE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Cq;

.field public final A02:Lcom/facebook/ads/redexgen/X/Cs;

.field public final A03:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;I)V
    .locals 0

    .line 35587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35588
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FE;->A01:Lcom/facebook/ads/redexgen/X/Cq;

    .line 35589
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FE;->A02:Lcom/facebook/ads/redexgen/X/Cs;

    .line 35590
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FE;->A03:Ljava/io/IOException;

    .line 35591
    iput p4, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:I

    .line 35592
    return-void
.end method
