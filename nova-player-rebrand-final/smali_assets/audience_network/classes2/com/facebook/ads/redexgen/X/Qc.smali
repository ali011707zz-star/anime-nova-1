.class public final Lcom/facebook/ads/redexgen/X/Qc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/7M;

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 60264
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Qc;->A04:Z

    .line 60265
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Qc;->A02:I

    .line 60266
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Qc;->A00:I

    .line 60267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Qc;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 60268
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Qc;->A01:I

    .line 60269
    return-void
.end method
