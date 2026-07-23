.class public final Lcom/google/android/gms/internal/ads/zzfgv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesf;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcma;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzerp;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfhv;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbhz;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfor;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfjj;

.field private zzi:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzerp;Lcom/google/android/gms/internal/ads/zzfhv;Lcom/google/android/gms/internal/ads/zzfjj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzh:Lcom/google/android/gms/internal/ads/zzfjj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zze:Lcom/google/android/gms/internal/ads/zzfhv;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzx()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzg:Lcom/google/android/gms/internal/ads/zzfor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesd;Lcom/google/android/gms/internal/ads/zzese;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfgu;-><init>(Lcom/google/android/gms/internal/ads/zzfgv;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfgv;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcZ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzc()V

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcma;->zzw()Lcom/google/android/gms/internal/ads/zzebf;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzebf;->zzc(Z)V

    .line 11
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfgo;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfgo;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Landroid/util/Pair;

    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxh;->zzb:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/util/Pair;

    aput-object v1, v4, v0

    aput-object v3, v4, v2

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdxj;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzh:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 17
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 18
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfjj;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Landroid/content/Context;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzA()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfon;->zzg(Lcom/google/android/gms/internal/ads/zzfjk;)I

    move-result v0

    const/4 v1, 0x4

    .line 22
    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjy:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcma;->zzm()Lcom/google/android/gms/internal/ads/zzdlt;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    .line 26
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    .line 27
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p2

    .line 28
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zze(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzdlt;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/util/concurrent/Executor;

    .line 29
    invoke-virtual {p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzm(Lcom/google/android/gms/internal/ads/zzdel;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 30
    invoke-virtual {p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzdhe;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzn()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object p2

    .line 31
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zzf(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdlt;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzepw;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzf:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzepw;-><init>(Lcom/google/android/gms/internal/ads/zzbhz;)V

    .line 32
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zzd(Lcom/google/android/gms/internal/ads/zzepw;)Lcom/google/android/gms/internal/ads/zzdlt;

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdlt;->zza()Lcom/google/android/gms/internal/ads/zzdlu;

    move-result-object p2

    :goto_0
    move-object v8, p2

    goto :goto_1

    .line 61
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhe;

    .line 34
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zze:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/util/concurrent/Executor;

    .line 35
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdhe;->zza(Lcom/google/android/gms/internal/ads/zzdbf;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 36
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdhe;->zzb(Lcom/google/android/gms/internal/ads/zzdct;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 37
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdhe;->zzc(Lcom/google/android/gms/internal/ads/zzdbi;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcma;->zzm()Lcom/google/android/gms/internal/ads/zzdlt;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    .line 39
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    .line 40
    invoke-virtual {v4, p3}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p2

    .line 41
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zze(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzdlt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/util/concurrent/Executor;

    .line 42
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzm(Lcom/google/android/gms/internal/ads/zzdel;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 43
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zza(Lcom/google/android/gms/internal/ads/zzdbf;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 44
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzb(Lcom/google/android/gms/internal/ads/zzdct;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 45
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzc(Lcom/google/android/gms/internal/ads/zzdbi;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 46
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzf(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 47
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzg(Lcom/google/android/gms/internal/ads/zzdjm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 48
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 49
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzk(Lcom/google/android/gms/internal/ads/zzddw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 50
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzd(Lcom/google/android/gms/internal/ads/zzdbv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhe;->zzn()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object p2

    .line 51
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zzf(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdlt;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzepw;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzf:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzepw;-><init>(Lcom/google/android/gms/internal/ads/zzbhz;)V

    .line 52
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdlt;->zzd(Lcom/google/android/gms/internal/ads/zzepw;)Lcom/google/android/gms/internal/ads/zzdlt;

    .line 53
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdlt;->zza()Lcom/google/android/gms/internal/ads/zzdlu;

    move-result-object p2

    goto :goto_0

    .line 54
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdlu;->zzc()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object p2

    .line 56
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzi(I)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 57
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfoo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 58
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfoo;

    :goto_2
    move-object v6, p2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    goto :goto_2

    .line 59
    :goto_3
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdlu;->zzb()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxj;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfgt;

    move-object v4, p0

    move-object v5, p4

    .line 61
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfgt;-><init>(Lcom/google/android/gms/internal/ads/zzfgv;Lcom/google/android/gms/internal/ads/zzese;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzdlu;)V

    iget-object p2, v4, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return v2
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbhz;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzf:Lcom/google/android/gms/internal/ads/zzbhz;

    return-void
.end method

.method final synthetic zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzerp;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zze()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzerp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfhv;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zze:Lcom/google/android/gms/internal/ads/zzfhv;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzg:Lcom/google/android/gms/internal/ads/zzfor;

    return-object v0
.end method

.method final synthetic zzi(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
