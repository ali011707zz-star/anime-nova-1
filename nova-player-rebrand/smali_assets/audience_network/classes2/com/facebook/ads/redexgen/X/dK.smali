.class public final Lcom/facebook/ads/redexgen/X/dK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/dL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonParsingResult"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lorg/json/JSONObject;

.field public final A05:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 80068
    .local p3, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "videoUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "fileUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80069
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dK;->A04:Lorg/json/JSONObject;

    .line 80070
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dK;->A00:Ljava/lang/String;

    .line 80071
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/dK;->A02:Ljava/util/ArrayList;

    .line 80072
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/dK;->A03:Ljava/util/ArrayList;

    .line 80073
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/dK;->A01:Ljava/util/ArrayList;

    .line 80074
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/dK;->A05:Z

    .line 80075
    return-void
.end method
