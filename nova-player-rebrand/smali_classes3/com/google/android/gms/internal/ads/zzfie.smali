.class public final Lcom/google/android/gms/internal/ads/zzfie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesf;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcma;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfhv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfgj;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfjd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfor;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfjj;

.field private zzi:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzfhv;Lcom/google/android/gms/internal/ads/zzfjj;Lcom/google/android/gms/internal/ads/zzfjd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfie;->zze:Lcom/google/android/gms/internal/ads/zzfgj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzd:Lcom/google/android/gms/internal/ads/zzfhv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzh:Lcom/google/android/gms/internal/ads/zzfjj;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzf:Lcom/google/android/gms/internal/ads/zzfjd;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzx()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzg:Lcom/google/android/gms/internal/ads/zzfor;

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdud;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfid;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcma;->zzp()Lcom/google/android/gms/internal/ads/zzdud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfie;->zza:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfid;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzf:Lcom/google/android/gms/internal/ads/zzfjd;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzf(Lcom/google/android/gms/internal/ads/zzfjd;)Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdud;->zzd(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzdud;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhe;->zzn()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdud;->zze(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdud;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesd;Lcom/google/android/gms/internal/ads/zzese;)Z
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcan;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcan;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V

    .line 2
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfhx;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzcan;->zzb:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzb:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfic;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfic;-><init>(Lcom/google/android/gms/internal/ads/zzfie;)V

    .line 5
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p2

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    return p2

    .line 7
    :cond_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhe;->zzcZ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p3

    .line 7
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzc()V

    .line 10
    :cond_2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zze:Lcom/google/android/gms/internal/ads/zzfgj;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfgj;->zzd()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfgj;->zzd()Ljava/lang/Object;

    move-result-object p3

    .line 11
    check-cast p3, Lcom/google/android/gms/internal/ads/zzdue;

    .line 12
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdam;->zzd()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object p3

    .line 13
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzi(I)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcan;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 14
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfoo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 15
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzfoo;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfoo;

    move-object v7, p3

    goto :goto_0

    :cond_3
    move-object v7, v2

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zza:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcan;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 16
    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p3, v3}, Lcom/google/android/gms/internal/ads/zzfkh;->zzb(Landroid/content/Context;Z)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzkq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcma;->zzw()Lcom/google/android/gms/internal/ads/zzebf;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzebf;->zzc(Z)V

    :cond_4
    new-instance v3, Landroid/util/Pair;

    .line 20
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdxh;->zzb:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/util/Pair;

    aput-object v3, v5, p2

    aput-object v4, v5, v10

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdxj;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzh:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 26
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 28
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 29
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfjj;->zzA()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfon;->zzg(Lcom/google/android/gms/internal/ads/zzfjk;)I

    move-result p2

    .line 31
    invoke-static {p3, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfid;

    invoke-direct {v9, v2}, Lcom/google/android/gms/internal/ads/zzfid;-><init>([B)V

    iput-object p1, v9, Lcom/google/android/gms/internal/ads/zzfid;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zze:Lcom/google/android/gms/internal/ads/zzfgj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfgk;

    invoke-direct {p2, v9, v2}, Lcom/google/android/gms/internal/ads/zzfgk;-><init>(Lcom/google/android/gms/internal/ads/zzfgh;Lcom/google/android/gms/internal/ads/zzbzu;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfib;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfib;-><init>(Lcom/google/android/gms/internal/ads/zzfie;)V

    .line 32
    invoke-interface {p1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzfgj;->zzc(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfia;

    move-object v5, p0

    move-object v6, p4

    .line 33
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfia;-><init>(Lcom/google/android/gms/internal/ads/zzfie;Lcom/google/android/gms/internal/ads/zzese;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzfid;)V

    iget-object p2, v5, Lcom/google/android/gms/internal/ads/zzfie;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return v10
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method final synthetic zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzd:Lcom/google/android/gms/internal/ads/zzfhv;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhv;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdud;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfie;->zzk(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdud;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdud;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfie;->zzk(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdud;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfhv;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzd:Lcom/google/android/gms/internal/ads/zzfhv;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfgj;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->zze:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzfor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzg:Lcom/google/android/gms/internal/ads/zzfor;

    return-object v0
.end method

.method final zzj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzh:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzj()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfix;->zza(I)Lcom/google/android/gms/internal/ads/zzfix;

    return-void
.end method
