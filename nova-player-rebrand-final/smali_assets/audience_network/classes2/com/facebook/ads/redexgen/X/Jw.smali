.class public final Lcom/facebook/ads/redexgen/X/Jw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/K2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Z

.field public final A02:[B

.field public final A03:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 44432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44433
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:I

    .line 44434
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Z

    .line 44435
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Jw;->A03:[B

    .line 44436
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:[B

    .line 44437
    return-void
.end method
