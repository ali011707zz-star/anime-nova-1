.class final Lcom/google/android/gms/internal/ads/zzdns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdoc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdoc;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p2, "Google"

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdns;->zza:Ljava/lang/String;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdns;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzgr:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "omid native display exp"

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdns;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzZ()Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjl;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzo(Lcom/google/android/gms/internal/ads/zzcjl;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdns;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzZ()Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzY()Lcom/google/android/gms/internal/ads/zzcen;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdoc;->zzL(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzekb;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcen;->zzc(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcen;->cancel(Z)Z

    :cond_2
    return-void
.end method
