.class final Lcom/google/ads/interactivemedia/v3/internal/zzyf;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzyf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyf;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzyf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>()V

    return-void
.end method

.method private static final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabb;I)Lcom/google/ads/interactivemedia/v3/internal/zzvc;
    .locals 2

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzi()V

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzve;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;

    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzh()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzww;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzww;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzabb;I)Lcom/google/ads/interactivemedia/v3/internal/zzvc;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzc()V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;-><init>()V

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zza()V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzva;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzyh;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzyh;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzabb;I)Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabb;I)Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zze()Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzf()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v3

    .line 9
    invoke-static {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzabb;I)Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object v4

    if-nez v4, :cond_4

    .line 10
    invoke-static {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabb;I)Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    instance-of v5, v1, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    if-eqz v5, :cond_5

    .line 11
    move-object v2, v1

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzva;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    goto :goto_3

    .line 12
    :cond_5
    move-object v5, v1

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    invoke-virtual {v5, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    :goto_3
    if-eqz v4, :cond_2

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_0

    .line 12
    :cond_6
    instance-of v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    if-eqz v2, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzb()V

    goto :goto_4

    .line 15
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzd()V

    .line 16
    :goto_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 17
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method public final bridge synthetic write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-void
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 1
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzve;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    if-eqz v0, :cond_3

    .line 14
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 15
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzd()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzl(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    .line 17
    :cond_1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzb()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzh(Z)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    .line 19
    :cond_2
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    :cond_3
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    .line 10
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    .line 11
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzva;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    :cond_5
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    .line 3
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    .line 4
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zzb()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    goto :goto_1

    .line 7
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    .line 6
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Couldn\'t write "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void
.end method
