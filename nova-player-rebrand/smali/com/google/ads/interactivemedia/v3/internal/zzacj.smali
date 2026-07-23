.class final Lcom/google/ads/interactivemedia/v3/internal/zzacj;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzacj;


# instance fields
.field final zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

.field zzb:Z

.field zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;-><init>(Z)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaep;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaep;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzaep;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaep;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzb()V

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzb()V

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzacj;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    return-object v0
.end method

.method public static zzg(Lcom/google/ads/interactivemedia/v3/internal/zzaci;Ljava/lang/Object;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    .line 2
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zza()I

    move-result v0

    .line 3
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzd()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 9
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zze()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz v1, :cond_1

    shl-int/lit8 p0, v0, 0x3

    .line 17
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    .line 18
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 15
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzafj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    throw v2

    :cond_2
    if-gtz v1, :cond_3

    :goto_0
    return v3

    :cond_3
    shl-int/lit8 p0, v0, 0x3

    .line 10
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    .line 12
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    .line 13
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzafj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    throw v2

    :cond_4
    shl-int/lit8 p0, v0, 0x3

    .line 4
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    .line 5
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    .line 6
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzafj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    throw v2
.end method

.method private static zzh(Ljava/util/Map$Entry;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaci;

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzafj;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    if-ne v1, v2, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzi(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzi(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static zzi(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzady;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzady;

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaP()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadh;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzj(Ljava/util/Map$Entry;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaci;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    move-result-object v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzafj;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzd()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzadh;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 7
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzadh;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzaci;

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zza()I

    move-result p0

    .line 8
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 9
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v3

    .line 10
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 11
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    .line 12
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb()I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v2

    :goto_0
    add-int/2addr v2, v1

    add-int/2addr p0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzaci;

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zza()I

    move-result p0

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    .line 15
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 16
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v3

    .line 17
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 18
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    .line 19
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadx;->zzaB()I

    move-result v1

    .line 20
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzg(Lcom/google/ads/interactivemedia/v3/internal/zzaci;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final zzk(Lcom/google/ads/interactivemedia/v3/internal/zzaci;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzadb;->zzb:[B

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzafj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadh;

    if-eqz v0, :cond_3

    :cond_0
    return-void

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzafs;

    if-eqz v0, :cond_3

    :cond_1
    return-void

    .line 6
    :pswitch_2
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    if-nez v0, :cond_2

    .line 5
    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 6
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 7
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 9
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 10
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 11
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_3

    return-void

    .line 3
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const/4 p0, 0x2

    aput-object p1, v2, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 15
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzc()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 2
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/zzaeq;

    .line 3
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzaeq;->zza()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/zzaci;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzaci;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zze()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzaci;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzaci;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzc:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzc:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    .line 2
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzb()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzb:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzc()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    if-eqz v4, :cond_1

    .line 3
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaw()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zze()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    if-eqz v3, :cond_3

    .line 6
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaw()V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzb:Z

    return-void
.end method

.method public final zzc()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzc:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzadg;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadg;-><init>(Ljava/util/Iterator;)V

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/internal/zzaci;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzk(Lcom/google/ads/interactivemedia/v3/internal/zzaci;Ljava/lang/Object;)V

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzk(Lcom/google/ads/interactivemedia/v3/internal/zzaci;Ljava/lang/Object;)V

    .line 9
    :goto_1
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzadh;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzc:Z

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zze()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzc()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzh(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zze()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzh(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final zzf()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzc()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzj(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->zze()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzj(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_1

    :cond_1
    return v3
.end method
