.class public final Lcom/facebook/ads/redexgen/X/V2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/X9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdRecord"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/OG;

.field public final A01:J

.field public final A02:Landroid/os/Messenger;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2

    .line 68989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68990
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    .line 68991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:Ljava/lang/String;

    .line 68992
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:Landroid/os/Messenger;

    .line 68993
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Ljava/lang/String;

    .line 68994
    return-void
.end method
