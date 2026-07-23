.class public final synthetic Lcom/facebook/ads/redexgen/X/BU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/BZ;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/BZ;)V
    .locals 0

    .line 30549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:Lcom/facebook/ads/redexgen/X/BZ;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 30550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:Lcom/facebook/ads/redexgen/X/BZ;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ba;->A0A(Lcom/facebook/ads/redexgen/X/BZ;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
