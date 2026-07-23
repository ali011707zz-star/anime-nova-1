.class public final Lcom/facebook/ads/redexgen/X/X9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/V2;
    }
.end annotation


# static fields
.field public static A01:Lcom/facebook/ads/redexgen/X/X9;

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/V2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2261
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JA9mFndCctStcDzVBolZEhplBWXHl3GV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NcYgt8CJQWeZTs6r7gmN4DT79HnpXepC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3XxDtH0VTaUV7XfCs333UHSSC4s6Co3p"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GzYduKaWaeKhPeumV22hkK4VttJt2TZR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1SSiXu0qt70LSSG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DSz0vhavMIehNnnYUsD24XzaqUk6jyxA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cWkBnlzylFFk2PvMzvfAX6O9wvYh3tUg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DdhgMLh6mU1KSfIF9B7woVtLM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X9;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X9;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/X9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X9;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Ljava/util/LinkedHashMap;

    .line 72089
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/X9;
    .locals 1

    .line 72090
    sget-object v0, Lcom/facebook/ads/redexgen/X/X9;->A01:Lcom/facebook/ads/redexgen/X/X9;

    if-nez v0, :cond_0

    .line 72091
    new-instance v0, Lcom/facebook/ads/redexgen/X/X9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/X9;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/X9;->A01:Lcom/facebook/ads/redexgen/X/X9;

    .line 72092
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/X9;->A01:Lcom/facebook/ads/redexgen/X/X9;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/X9;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X9;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        0x5dt
        0x46t
        0x4ct
        0x44t
        0x4dt
        0x57t
        0x4dt
        0x50t
        0x5ct
        0x5at
        0x49t
        0x5bt
        0x57t
        0x43t
        0x4dt
        0x51t
        0x6t
        0x27t
        0x31t
        0x36t
        0x30t
        0x2dt
        0x3bt
        0x27t
        0x26t
        0x62t
        0x3t
        0x26t
        0x62t
        0x70t
        0x77t
        0x71t
        0x7ct
        0x62t
        0x67t
        0x7ct
        0x6at
        0x67t
        0x7ct
        0x68t
        0x66t
        0x7at
    .end array-data
.end method


# virtual methods
.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OG;
    .locals 4

    .line 72093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/V2;

    .line 72094
    .local v0, "adRecord":Lcom/facebook/ads/redexgen/X/V2;
    if-eqz v0, :cond_0

    .line 72095
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    return-object v0

    .line 72096
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/X9;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/X9;->A03:[Ljava/lang/String;

    const-string v1, "XrwELTKduoHwTv5Xe9Ueh6lc6nYoGsk4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "dmw4t0heQzRKMH67OrdKuJovyCEl55Ve"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V2;
    .locals 1

    .line 72097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/V2;

    return-object v0
.end method

.method public final A05(Ljava/lang/String;Landroid/os/Messenger;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V2;
    .locals 2

    .line 72098
    new-instance v1, Lcom/facebook/ads/redexgen/X/V2;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/V2;-><init>(Ljava/lang/String;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 72099
    .local v0, "adRecord":Lcom/facebook/ads/redexgen/X/V2;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72100
    return-object v1
.end method

.method public final A06()V
    .locals 5

    .line 72101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 72102
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/internal/ipc/AdsRegistry$AdRecord;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/X9;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/X9;->A03:[Ljava/lang/String;

    const-string v1, "uaiMeFYOk8P5CT6awQd5iZTKLUhraaN2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "RG3ipiEhElKk8ivC3FwrEM9mKg3mEr0b"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 72103
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72104
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/internal/ipc/AdsRegistry$AdRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/V2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    .line 72105
    .local v2, "ad":Lcom/facebook/ads/redexgen/X/OG;
    if-eqz v0, :cond_0

    .line 72106
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OG;->destroy()V

    .line 72107
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 72108
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/internal/ipc/AdsRegistry$AdRecord;>;"
    .end local v2    # "ad":Lcom/facebook/ads/redexgen/X/OG;
    goto :goto_0

    .line 72109
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 5

    .line 72110
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 72111
    .local v0, "message":Landroid/os/Message;
    if-eqz p2, :cond_0

    .line 72112
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0xd

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72113
    :cond_0
    if-eqz p3, :cond_1

    .line 72114
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72115
    :cond_1
    invoke-virtual {p4, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72116
    .local v0, "e":Landroid/os/RemoteException;
    :catch_0
    if-eqz p2, :cond_2

    .line 72117
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/X9;->A08(Ljava/lang/String;)V

    .line 72118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public final A08(Ljava/lang/String;)V
    .locals 5

    .line 72119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/V2;

    .line 72120
    .local v0, "adRecord":Lcom/facebook/ads/redexgen/X/V2;
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    if-eqz v0, :cond_0

    .line 72121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    const/16 v1, 0xd

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72122
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OG;->destroy()V

    .line 72123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72124
    :cond_0
    return-void
.end method

.method public final AEs(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 72125
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/X9;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V2;

    move-result-object v0

    .line 72126
    .local v0, "adRecord":Lcom/facebook/ads/redexgen/X/V2;
    if-eqz v0, :cond_0

    .line 72127
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V2;->A02:Landroid/os/Messenger;

    .line 72128
    .local v1, "clientMessenger":Landroid/os/Messenger;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/X9;->A07(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V

    .line 72129
    .end local v1    # "clientMessenger":Landroid/os/Messenger;
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 72130
    .local v1, "adsToDestroy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72131
    .local v3, "adRecordEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/internal/ipc/AdsRegistry$AdRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/V2;

    .line 72132
    .local v4, "adRecordEntryValue":Lcom/facebook/ads/redexgen/X/V2;
    const/4 v1, 0x0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 72133
    .local p0, "message":Landroid/os/Message;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/V2;->A02:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72134
    .local p0, "e":Landroid/os/RemoteException;
    :catch_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/V2;->A03:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72135
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/X9;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/X9;->A03:[Ljava/lang/String;

    const-string v1, "oay5V0mz6qjd0xRXPgrRbPRiLoP0UxTC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "83Bq2rwwej5lQl4xIjWhMW1frgDiuUFT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72136
    .local v3, "e":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/X9;->A08(Ljava/lang/String;)V

    .line 72137
    .end local v3    # "e":Ljava/lang/String;
    goto :goto_1

    .line 72138
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
