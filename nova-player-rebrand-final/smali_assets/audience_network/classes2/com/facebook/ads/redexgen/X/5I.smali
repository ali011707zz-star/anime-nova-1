.class public abstract Lcom/facebook/ads/redexgen/X/5I;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 385
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qfPqVubsqiDC6Vd32xxY81weI46FC8i6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ifUD3UE6KzNkI7FGHB4BSxXnx5udEg1v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HApreVkXUmhHvk7HCV6N8bmHn3x6D71x"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KwNQHauJnUfBiEnC2ayFRvrFwy8Kb5WT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B3seXQDThZm5axyUWAGkIYmR8N5go"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "E5OkJ7IfnjnuDV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RJSotr9XNdK0NrHWRK8cXeAUCHsVK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bPrL9Bc32BKI4n2EpyGIBLpCsrR14et0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5I;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 14572
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 14573
    .local v0, "attributeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 14574
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14575
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5I;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14576
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5I;->A00:[Ljava/lang/String;

    const-string v1, "CnKCr3L2gFKHIgDNDJx3U1eLsZv8S9Vf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object p0

    .line 14577
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 14578
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 14579
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A03(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 14580
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5I;->A01(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 14581
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5I;->A02(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
