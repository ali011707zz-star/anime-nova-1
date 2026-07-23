.class public final Lcom/facebook/ads/redexgen/X/Sa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fb4aData"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 64084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64085
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Ljava/lang/String;

    .line 64086
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:Ljava/lang/String;

    .line 64087
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Z

    .line 64088
    return-void
.end method
