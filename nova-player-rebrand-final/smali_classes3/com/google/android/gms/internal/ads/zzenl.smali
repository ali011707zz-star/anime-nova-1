.class public final Lcom/google/android/gms/internal/ads/zzenl;
.super Lcom/google/android/gms/internal/ads/zzeng;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcma;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdan;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzepw;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdhf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzenr;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzekl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzdan;Lcom/google/android/gms/internal/ads/zzepw;Lcom/google/android/gms/internal/ads/zzdhf;Lcom/google/android/gms/internal/ads/zzenr;Lcom/google/android/gms/internal/ads/zzekl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeng;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenl;->zza:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzb:Lcom/google/android/gms/internal/ads/zzdan;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzc:Lcom/google/android/gms/internal/ads/zzepw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzd:Lcom/google/android/gms/internal/ads/zzdhf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzenl;->zze:Lcom/google/android/gms/internal/ads/zzenr;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzf:Lcom/google/android/gms/internal/ads/zzekl;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfjk;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzb:Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdan;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdan;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdag;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzenl;->zze:Lcom/google/android/gms/internal/ads/zzenr;

    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzdag;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzenr;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzd(Lcom/google/android/gms/internal/ads/zzdag;)Lcom/google/android/gms/internal/ads/zzdan;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzev:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzf:Lcom/google/android/gms/internal/ads/zzekl;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzg(Lcom/google/android/gms/internal/ads/zzekl;)Lcom/google/android/gms/internal/ads/zzdan;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzenl;->zza:Lcom/google/android/gms/internal/ads/zzcma;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcma;->zzm()Lcom/google/android/gms/internal/ads/zzdlt;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zze(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzdlt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzd:Lcom/google/android/gms/internal/ads/zzdhf;

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zzf(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdlt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzc:Lcom/google/android/gms/internal/ads/zzepw;

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zzd(Lcom/google/android/gms/internal/ads/zzepw;)Lcom/google/android/gms/internal/ads/zzdlt;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdlt;->zza()Lcom/google/android/gms/internal/ads/zzdlu;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlu;->zzb()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxj;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
