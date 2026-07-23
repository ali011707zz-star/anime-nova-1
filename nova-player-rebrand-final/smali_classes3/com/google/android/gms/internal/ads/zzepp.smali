.class public final Lcom/google/android/gms/internal/ads/zzepp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcvc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbhz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfnu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvc;Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzbhz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepp;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepp;->zzb:Lcom/google/android/gms/internal/ads/zzcvc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepp;->zze:Lcom/google/android/gms/internal/ads/zzfnu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepp;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzepp;->zzc:Lcom/google/android/gms/internal/ads/zzbhz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepp;->zzc:Lcom/google/android/gms/internal/ads/zzbhz;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepl;

    new-instance v2, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepp;->zza:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzepn;->zza:Lcom/google/android/gms/internal/ads/zzepn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzu:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfis;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzepl;-><init>(Lcom/google/android/gms/internal/ads/zzepp;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcwd;Lcom/google/android/gms/internal/ads/zzfis;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwv;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzepp;->zzb:Lcom/google/android/gms/internal/ads/zzcvc;

    .line 3
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcvc;->zzf(Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzcue;)Lcom/google/android/gms/internal/ads/zzcty;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhu;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcty;->zzl()Lcom/google/android/gms/internal/ads/zzepo;

    move-result-object v2

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzbhu;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzt:Lcom/google/android/gms/internal/ads/zzfno;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzepp;->zze:Lcom/google/android/gms/internal/ads/zzfnu;

    .line 6
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzepm;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzepm;-><init>(Lcom/google/android/gms/internal/ads/zzepp;Lcom/google/android/gms/internal/ads/zzbhu;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzepp;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 7
    invoke-static {v3, v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzfnf;->zzd(Lcom/google/android/gms/internal/ads/zzfna;Lcom/google/android/gms/internal/ads/zzgzy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfnm;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfno;->zzu:Lcom/google/android/gms/internal/ads/zzfno;

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcty;->zzi()Lcom/google/android/gms/internal/ads/zzctx;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zze(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbhu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepp;->zzc:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhz;->zze(Lcom/google/android/gms/internal/ads/zzbhw;)V

    return-void
.end method
