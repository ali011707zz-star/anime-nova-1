.class public final Lcom/facebook/ads/redexgen/X/W1;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Vz;->A05()Lcom/facebook/ads/redexgen/X/W1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vz;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2166
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hExgTQdw1kv5p4SGmSicbF82985LCpum"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OSM8v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iL8QA6bjiVhv7y8TzYON6pF30CxXc7Eu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LpLF7ms2E8gIcrW5L7jBJg3HcpVfC8m9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nyKyIbOxza05szDl5mK4c2SMRynlWefb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BGGrZQbo3jXV4aVW1zlLDKwbTLCVQORY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wI7v5HbNskmPwObzpny5FWr5GhKQDnFZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gz5SetHbJQqiE2gsx67H3auEs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W1;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70104
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 70105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A07(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70106
    return-void

    .line 70107
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A01:[Ljava/lang/String;

    const-string v1, "oRBMgw8vkLwlbJMhgBKrYszA0eyE8H4t"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Vz;->A07(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0X()V

    .line 70108
    return-void
.end method

.method public final A03()V
    .locals 4

    .line 70109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A07(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70110
    return-void

    .line 70111
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0V(Lcom/facebook/ads/redexgen/X/Vz;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0W(Lcom/facebook/ads/redexgen/X/Vz;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A01:[Ljava/lang/String;

    const-string v1, "C0qKRDQoQScpUymuNxw7FdDIXXvcdKLa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Vz;->A0X(Lcom/facebook/ads/redexgen/X/Vz;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70112
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0P(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/redexgen/X/et;)V

    .line 70113
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vz;->A0Z(Lcom/facebook/ads/redexgen/X/Vz;Z)Z

    .line 70114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vz;->A0Y(Lcom/facebook/ads/redexgen/X/Vz;Z)Z

    .line 70115
    return-void
.end method
