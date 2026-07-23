.class final Lcom/google/android/gms/ads/internal/util/zzbh;
.super Lcom/google/android/gms/internal/ads/zzatb;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:[B

.field final synthetic zzb:Ljava/util/Map;

.field final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbl;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzasd;Lcom/google/android/gms/internal/ads/zzasc;[BLjava/util/Map;Lcom/google/android/gms/ads/internal/util/client/zzl;)V
    .locals 0

    .line 1
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/util/zzbh;->zza:[B

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/util/zzbh;->zzb:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/util/zzbh;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzatb;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzasd;Lcom/google/android/gms/internal/ads/zzasc;)V

    return-void
.end method


# virtual methods
.method public final zzm()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbh;->zzb:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public final zzn()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbh;->zza:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzatb;->zzz(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzz(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbh;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zze(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzatb;->zzz(Ljava/lang/String;)V

    return-void
.end method
