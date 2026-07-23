.class final Lcom/google/android/gms/internal/ads/zzaqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/lang/String;

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzagh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgq;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zza:Ljava/util/List;

    const-string p2, "video/mp2t"

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzb:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzc:[Lcom/google/android/gms/internal/ads/zzagh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgq;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaqe;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaqe;-><init>(Lcom/google/android/gms/internal/ads/zzaqf;)V

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Lcom/google/android/gms/internal/ads/zzgp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzd:Lcom/google/android/gms/internal/ads/zzgq;

    const/4 p2, 0x3

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgq;->zza(I)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzc:[Lcom/google/android/gms/internal/ads/zzagh;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzv;

    .line 4
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    :cond_1
    :goto_1
    const-string v6, "Invalid closed caption MIME type provided: %s"

    .line 5
    invoke-static {v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzgrc;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzt;

    .line 6
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzb:Ljava/lang/String;

    .line 8
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 9
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zze:I

    .line 10
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzf(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    .line 11
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzL:I

    .line 12
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzJ(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    .line 13
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 14
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    .line 6
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 15
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzb(JLcom/google/android/gms/internal/ads/zzer;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v0

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v1

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzd:Lcom/google/android/gms/internal/ads/zzgq;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgq;->zzc(JLcom/google/android/gms/internal/ads/zzer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method final synthetic zzc(JLcom/google/android/gms/internal/ads/zzer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzc:[Lcom/google/android/gms/internal/ads/zzagh;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaeh;->zzb(JLcom/google/android/gms/internal/ads/zzer;[Lcom/google/android/gms/internal/ads/zzagh;)V

    return-void
.end method
