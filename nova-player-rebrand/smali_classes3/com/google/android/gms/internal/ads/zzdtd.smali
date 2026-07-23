.class final Lcom/google/android/gms/internal/ads/zzdtd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfir;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfiu;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcrv;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdtk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdtk;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzcrv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zza:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzc:Lcom/google/android/gms/internal/ads/zzcrv;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zza:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaD(Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object p1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzlC:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzc:Lcom/google/android/gms/internal/ads/zzcrv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzm()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzn()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v4

    .line 6
    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzclj;->zzd(Lcom/google/android/gms/internal/ads/zzcrv;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzfqk;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzm()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzl()Lcom/google/android/gms/internal/ads/zzdxz;

    move-result-object v2

    .line 7
    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzclj;->zze(Lcom/google/android/gms/internal/ads/zzcrv;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzdxz;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzoy:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzclj;->zzb(Lcom/google/android/gms/internal/ads/zzfir;)V

    :cond_1
    return-void
.end method
