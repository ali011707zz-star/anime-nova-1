.class public final Lcom/google/android/gms/ads/internal/util/zzbk;
.super Lcom/google/android/gms/internal/ads/zzary;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcen;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzcen;)V
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbj;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbj;-><init>(Lcom/google/android/gms/internal/ads/zzcen;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzary;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzasc;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbk;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    .line 2
    new-instance p2, Lcom/google/android/gms/ads/internal/util/client/zzl;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbk;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;

    const-string v0, "GET"

    .line 4
    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final zzr(Lcom/google/android/gms/internal/ads/zzaru;)Lcom/google/android/gms/internal/ads/zzase;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasv;->zza(Lcom/google/android/gms/internal/ads/zzaru;)Lcom/google/android/gms/internal/ads/zzarh;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzase;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzarh;)Lcom/google/android/gms/internal/ads/zzase;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic zzs(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaru;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaru;->zzc:Ljava/util/Map;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaru;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbk;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzd(Ljava/util/Map;I)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaru;->zzb:[B

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzj()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzf([B)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbk;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcen;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
