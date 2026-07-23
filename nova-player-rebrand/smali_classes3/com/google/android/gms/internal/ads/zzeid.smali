.class public final Lcom/google/android/gms/internal/ads/zzeid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzehr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzehv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzehr;Lcom/google/android/gms/internal/ads/zzehv;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeid;->zza:Lcom/google/android/gms/internal/ads/zzehr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzb:Lcom/google/android/gms/internal/ads/zzehv;

    return-void
.end method


# virtual methods
.method public final zzdK(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdL(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzhf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzd:Lcom/google/android/gms/internal/ads/zzfno;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeid;->zza:Lcom/google/android/gms/internal/ads/zzehr;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzehr;->zzg(J)V

    return-void

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzA:Lcom/google/android/gms/internal/ads/zzfno;

    if-eq p2, p1, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzc:Lcom/google/android/gms/internal/ads/zzfno;

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeid;->zza:Lcom/google/android/gms/internal/ads/zzehr;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzehr;->zza(J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzb:Lcom/google/android/gms/internal/ads/zzehv;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehr;->zzb()J

    move-result-wide v0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzehu;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzehu;-><init>(Lcom/google/android/gms/internal/ads/zzehv;J)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeia;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzehn;->zza(Lcom/google/android/gms/internal/ads/zzfmu;)V

    return-void
.end method

.method public final zzdM(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzhf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzd:Lcom/google/android/gms/internal/ads/zzfno;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeid;->zza:Lcom/google/android/gms/internal/ads/zzehr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehr;->zzh()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehr;->zzh()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzehr;->zzi(J)V

    :cond_0
    return-void
.end method

.method public final zzdN(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzhf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzd:Lcom/google/android/gms/internal/ads/zzfno;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeid;->zza:Lcom/google/android/gms/internal/ads/zzehr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehr;->zzh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehr;->zzh()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzehr;->zzi(J)V

    :cond_0
    return-void
.end method
