.class public final Lcom/google/ads/interactivemedia/v3/internal/zzrc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqx;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Lj$/util/Map;


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;


# instance fields
.field private final transient zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

.field private final transient zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

.field private final transient zzd:Lcom/google/ads/interactivemedia/v3/internal/zzrc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzrj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrj;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzh(Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    move-result-object v1

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->$r8$clinit:I

    .line 2
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzrm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzrt;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzrc;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzrt;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzrc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    return-void
.end method

.method static zzl(Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzrc;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzrj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrj;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    .line 2
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzh(Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    move-result-object p0

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->$r8$clinit:I

    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzrm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzrt;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzrc;)V

    return-object v0
.end method

.method public static zzm()Lcom/google/ads/interactivemedia/v3/internal/zzrc;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    return-object v0
.end method

.method private final zzs(II)Lcom/google/ads/interactivemedia/v3/internal/zzrc;
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzl(Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzw(II)Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    move-result-object v0

    invoke-virtual {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v2, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzrt;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzrc;)V

    return-object v2
.end method


# virtual methods
.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzp(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrh;->zzc(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    return-object v0
.end method

.method public final synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzr()Lcom/google/ads/interactivemedia/v3/internal/zzrd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrl;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzrl;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqa;-><init>(Ljava/util/Comparator;)V

    move-object v0, v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrl;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzrl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzl(Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzr()Lcom/google/ads/interactivemedia/v3/internal/zzrd;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzrt;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzrc;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v0

    return-object v0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzn(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrh;->zzc(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    :catch_0
    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    .line 1
    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzn(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzn(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzp(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrh;->zzc(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    return-object v0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    .line 2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzn(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrh;->zzc(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzo(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzo(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzp(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzp(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method

.method final zzf()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrs;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzrb;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzrc;)V

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    return-object v0
.end method

.method final zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final zzi()Lcom/google/ads/interactivemedia/v3/internal/zzqp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method

.method final zzj()Lcom/google/ads/interactivemedia/v3/internal/zzqp;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final zzk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzf()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzn(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzu(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzs(II)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method public final zzo(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzn(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzp(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 p1, 0x1

    aput-object p3, p4, p1

    const-string p1, "expected fromKey <= toKey but %s > %s"

    .line 3
    invoke-static {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzps;->zzc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzp(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrc;
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzv(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    .line 2
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzs(II)Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzq()Lcom/google/ads/interactivemedia/v3/internal/zzrt;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    return-object v0
.end method

.method final synthetic zzr()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method
