.class public final Lcom/google/android/gms/internal/ads/zzesm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfjj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcma;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzesc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfor;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcwu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcma;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzesc;Lcom/google/android/gms/internal/ads/zzfjj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzd:Lcom/google/android/gms/internal/ads/zzesc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesm;->zza:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcma;->zzx()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesm;->zze:Lcom/google/android/gms/internal/ads/zzfor;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzesc;->zzc()Lcom/google/android/gms/internal/ads/zzerp;

    move-result-object p1

    .line 2
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzt(Lcom/google/android/gms/internal/ads/zzerp;)Lcom/google/android/gms/internal/ads/zzfjj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesd;Lcom/google/android/gms/internal/ads/zzese;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcZ:Lcom/google/android/gms/internal/ads/zzbgv;

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

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzc()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcma;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzesl;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzesl;-><init>(Lcom/google/android/gms/internal/ads/zzesm;)V

    .line 47
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 5
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcma;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzesk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzesk;-><init>(Lcom/google/android/gms/internal/ads/zzesm;)V

    .line 8
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    .line 9
    :cond_3
    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfkh;->zzb(Landroid/content/Context;Z)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcma;->zzw()Lcom/google/android/gms/internal/ads/zzebf;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzebf;->zzc(Z)V

    .line 13
    :cond_4
    check-cast p3, Lcom/google/android/gms/internal/ads/zzesg;

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzesg;->zza:I

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    new-instance p3, Landroid/util/Pair;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdxh;->zzb:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/util/Pair;

    aput-object p3, v4, v2

    aput-object v1, v4, v3

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdxj;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesm;->zza:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 20
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfjj;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 21
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzl(I)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzA()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfon;->zzg(Lcom/google/android/gms/internal/ads/zzfjk;)I

    move-result p3

    const/16 v1, 0x8

    .line 23
    invoke-static {v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v8

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzo:Lcom/google/android/gms/ads/internal/client/zzco;

    if-eqz p3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzd:Lcom/google/android/gms/internal/ads/zzesc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzesc;->zzc()Lcom/google/android/gms/internal/ads/zzerp;

    move-result-object v2

    .line 24
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzerp;->zzn(Lcom/google/android/gms/ads/internal/client/zzco;)V

    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    .line 25
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzo()Lcom/google/android/gms/internal/ads/zzdmp;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    .line 26
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    .line 27
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p2

    .line 28
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdmp;->zzf(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzdmp;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzd:Lcom/google/android/gms/internal/ads/zzesc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesc;->zzc()Lcom/google/android/gms/internal/ads/zzerp;

    move-result-object v4

    .line 29
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdhe;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzn()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object p2

    .line 30
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdmp;->zzg(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdmp;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesc;->zzb()Lcom/google/android/gms/internal/ads/zzdml;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdmp;->zze(Lcom/google/android/gms/internal/ads/zzdml;)Lcom/google/android/gms/internal/ads/zzdmp;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzctu;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzctu;-><init>(Landroid/view/ViewGroup;)V

    .line 32
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdmp;->zzd(Lcom/google/android/gms/internal/ads/zzctu;)Lcom/google/android/gms/internal/ads/zzdmp;

    .line 33
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdmp;->zza()Lcom/google/android/gms/internal/ads/zzdmq;

    move-result-object v9

    .line 34
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 35
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdmq;->zzc()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzi(I)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfoo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfoo;

    :cond_6
    move-object v7, v0

    .line 39
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzv()Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfkj;->zza(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwu;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object p2

    .line 41
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzc()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdmq;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxj;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcwu;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzf:Lcom/google/android/gms/internal/ads/zzcwu;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzesj;

    move-object v5, p0

    move-object v6, p4

    .line 43
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzesj;-><init>(Lcom/google/android/gms/internal/ads/zzesm;Lcom/google/android/gms/internal/ads/zzese;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzdmq;)V

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzcwu;->zza(Lcom/google/android/gms/internal/ads/zzgzl;)V

    return v3
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzf:Lcom/google/android/gms/internal/ads/zzcwu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwu;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzd:Lcom/google/android/gms/internal/ads/zzesc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesc;->zze()Lcom/google/android/gms/internal/ads/zzdbi;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbi;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzd:Lcom/google/android/gms/internal/ads/zzesc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesc;->zze()Lcom/google/android/gms/internal/ads/zzdbi;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbi;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzcma;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzesc;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zzd:Lcom/google/android/gms/internal/ads/zzesc;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zze:Lcom/google/android/gms/internal/ads/zzfor;

    return-object v0
.end method
