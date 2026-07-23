.class public interface abstract Lcom/facebook/ads/redexgen/X/BT;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/BT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 661
    new-instance v0, Lcom/facebook/ads/redexgen/X/oB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oB;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/BT;->A00:Lcom/facebook/ads/redexgen/X/BT;

    return-void
.end method


# virtual methods
.method public abstract A7o(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B3;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation
.end method
