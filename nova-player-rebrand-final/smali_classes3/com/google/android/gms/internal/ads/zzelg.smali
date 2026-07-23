.class public final Lcom/google/android/gms/internal/ads/zzelg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcvc;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzduv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgqt;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdxt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvc;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzduv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzgqt;Lcom/google/android/gms/internal/ads/zzdxt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzb:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zza:Lcom/google/android/gms/internal/ads/zzcvc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelg;->zze:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzc:Lcom/google/android/gms/internal/ads/zzduv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzgqt;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzg:Lcom/google/android/gms/internal/ads/zzdxt;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Z
    .locals 0

    .line 1
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
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzelf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzelf;-><init>(Lcom/google/android/gms/internal/ads/zzelg;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhe;->zzcN:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzg:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zzB:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzb:Landroid/content/Context;

    .line 7
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzu:Ljava/util/List;

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjq;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzc:Lcom/google/android/gms/internal/ads/zzduv;

    .line 9
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    .line 10
    invoke-virtual {v2, v1, p2, v3}, Lcom/google/android/gms/internal/ads/zzduv;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v2

    .line 11
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzW:Z

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaw(Z)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzjd:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzag:Z

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v3

    .line 15
    invoke-static {v0, v3, p2}, Lcom/google/android/gms/internal/ads/zzcvr;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfir;)Lcom/google/android/gms/internal/ads/zzcvr;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzgqt;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzduy;

    .line 14
    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/ads/zzgqt;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/internal/util/zzat;

    invoke-direct {v5, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzduy;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/util/zzat;)V

    move-object v0, v5

    .line 16
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzg:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxh;->zzC:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 21
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelg;->zza:Lcom/google/android/gms/internal/ads/zzcvc;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcwv;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcue;

    .line 22
    new-instance v6, Lcom/google/android/gms/internal/ads/zzelb;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzelb;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfjq;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfis;

    move-result-object v1

    invoke-direct {p1, v0, v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcwd;Lcom/google/android/gms/internal/ads/zzfis;)V

    .line 23
    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzcvc;->zzf(Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzcue;)Lcom/google/android/gms/internal/ads/zzcty;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p3

    .line 25
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzg:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 26
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxh;->zzD:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 29
    invoke-virtual {p3, v0, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 30
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcty;->zzj()Lcom/google/android/gms/internal/ads/zzduu;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzg:Lcom/google/android/gms/internal/ads/zzdxt;

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v4

    .line 32
    invoke-virtual {p3, v2, v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzduu;->zzi(Lcom/google/android/gms/internal/ads/zzcjl;ZLcom/google/android/gms/internal/ads/zzbok;Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzd()Lcom/google/android/gms/internal/ads/zzdbx;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzelc;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzelc;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    .line 34
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 35
    invoke-virtual {p3, v1, v4}, Lcom/google/android/gms/internal/ads/zzdhd;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 36
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzgm:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 38
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcty;->zzm()Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzclc;->zzb(Lcom/google/android/gms/internal/ads/zzfir;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzclc;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcty;->zzj()Lcom/google/android/gms/internal/ads/zzduu;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcvc;->zze()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object v3

    .line 45
    invoke-static {v2, p3, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzduu;->zzj(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfoo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 46
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzM:Z

    if-eqz p2, :cond_5

    .line 47
    new-instance p2, Lcom/google/android/gms/internal/ads/zzela;

    invoke-direct {p2, v2}, Lcom/google/android/gms/internal/ads/zzela;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zze:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeld;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/ads/zzeld;-><init>(Lcom/google/android/gms/internal/ads/zzelg;Lcom/google/android/gms/internal/ads/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zze:Ljava/util/concurrent/Executor;

    .line 48
    invoke-interface {p3, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzele;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzele;-><init>(Lcom/google/android/gms/internal/ads/zzcty;)V

    .line 49
    invoke-static {p3, p2, v4}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzcjl;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzh()Lcom/google/android/gms/internal/ads/zzckr;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zza:Lcom/google/android/gms/ads/internal/client/zzga;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzckr;->zzc(Lcom/google/android/gms/ads/internal/client/zzga;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzbP:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->onPause()V

    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaG(Z)V

    :cond_1
    return-void
.end method
