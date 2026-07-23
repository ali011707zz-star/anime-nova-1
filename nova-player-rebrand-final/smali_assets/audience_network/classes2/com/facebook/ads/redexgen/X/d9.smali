.class public final Lcom/facebook/ads/redexgen/X/d9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/dC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSCall"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z

.field public final A02:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 79651
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 79652
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    .line 79653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79654
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d9;->A00:Ljava/lang/String;

    .line 79655
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/d9;->A02:[Ljava/lang/String;

    .line 79656
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/d9;->A01:Z

    .line 79657
    return-void
.end method
