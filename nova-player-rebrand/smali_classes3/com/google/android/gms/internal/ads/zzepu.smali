.class public final Lcom/google/android/gms/internal/ads/zzepu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbhz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfnu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeqd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzbhz;Lcom/google/android/gms/internal/ads/zzeqd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepu;->zzc:Lcom/google/android/gms/internal/ads/zzfnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepu;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepu;->zza:Lcom/google/android/gms/internal/ads/zzbhz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepu;->zzd:Lcom/google/android/gms/internal/ads/zzeqd;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepu;->zza:Lcom/google/android/gms/internal/ads/zzbhz;

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
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcen;

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcen;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzepz;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzepz;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeps;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeps;-><init>(Lcom/google/android/gms/internal/ads/zzepu;Lcom/google/android/gms/internal/ads/zzcen;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzepz;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzepz;->zzd(Lcom/google/android/gms/ads/internal/zzg;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbhu;

    .line 4
    iget-object p2, v4, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    invoke-direct {p1, v5, v0, p2}, Lcom/google/android/gms/internal/ads/zzbhu;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzt:Lcom/google/android/gms/internal/ads/zzfno;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzepu;->zzc:Lcom/google/android/gms/internal/ads/zzfnu;

    .line 6
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzept;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/ads/zzept;-><init>(Lcom/google/android/gms/internal/ads/zzepu;Lcom/google/android/gms/internal/ads/zzbhu;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzepu;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 7
    invoke-static {v3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfnf;->zzd(Lcom/google/android/gms/internal/ads/zzfna;Lcom/google/android/gms/internal/ads/zzgzy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfnm;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzu:Lcom/google/android/gms/internal/ads/zzfno;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfnl;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfnl;->zze(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbhu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepu;->zza:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhz;->zze(Lcom/google/android/gms/internal/ads/zzbhw;)V

    return-void
.end method

.method final synthetic zzd()Lcom/google/android/gms/internal/ads/zzeqd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepu;->zzd:Lcom/google/android/gms/internal/ads/zzeqd;

    return-object v0
.end method
