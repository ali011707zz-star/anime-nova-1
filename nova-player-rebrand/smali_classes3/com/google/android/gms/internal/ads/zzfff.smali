.class public final Lcom/google/android/gms/internal/ads/zzfff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesf;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcma;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzerp;

.field private final zze:Lcom/google/android/gms/internal/ads/zzert;

.field private final zzf:Landroid/view/ViewGroup;

.field private zzg:Lcom/google/android/gms/internal/ads/zzbhz;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdeg;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfor;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdgl;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfjj;

.field private zzl:Lcom/google/common/util/concurrent/ListenableFuture;

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/ads/internal/client/zze;

.field private zzo:Lcom/google/android/gms/internal/ads/zzese;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzerp;Lcom/google/android/gms/internal/ads/zzert;Lcom/google/android/gms/internal/ads/zzfjj;Lcom/google/android/gms/internal/ads/zzdgl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfff;->zze:Lcom/google/android/gms/internal/ads/zzert;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzk:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcma;->zzd()Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcma;->zzx()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzi:Lcom/google/android/gms/internal/ads/zzfor;

    new-instance p2, Landroid/widget/FrameLayout;

    .line 3
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzf:Landroid/view/ViewGroup;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzj:Lcom/google/android/gms/internal/ads/zzdgl;

    .line 4
    invoke-virtual {p7, p3}, Lcom/google/android/gms/internal/ads/zzfjj;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfjj;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzm:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzn:Lcom/google/android/gms/ads/internal/client/zze;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzo:Lcom/google/android/gms/internal/ads/zzese;

    return-void
.end method

.method private final zzt()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzl:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzn:Lcom/google/android/gms/ads/internal/client/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzn:Lcom/google/android/gms/ads/internal/client/zze;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzffc;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzffc;-><init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 3
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzo:Lcom/google/android/gms/internal/ads/zzese;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzese;->zza()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesd;Lcom/google/android/gms/internal/ads/zzese;)Z
    .locals 7

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Ad unit ID should not be null for banner ad."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzffd;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzffd;-><init>(Lcom/google/android/gms/internal/ads/zzfff;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p3

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfff;->zzb()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzk:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzB()Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzm:Z

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcZ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzc()V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzkq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcma;->zzw()Lcom/google/android/gms/internal/ads/zzebf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzebf;->zzc(Z)V

    :cond_3
    new-instance v0, Landroid/util/Pair;

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxh;->zzb:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    aput-object v0, v3, p3

    aput-object v2, v3, v1

    .line 15
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdxj;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzk:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 16
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 17
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 18
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zza:Landroid/content/Context;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzA()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zzg(Lcom/google/android/gms/internal/ads/zzfjk;)I

    move-result v3

    const/4 v4, 0x3

    .line 20
    invoke-static {p2, v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v3

    .line 21
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbjk;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzf()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v2

    .line 22
    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzk:Z

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    if-eqz p1, :cond_4

    const/4 p2, 0x7

    .line 65
    invoke-static {p2, v6, v6}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzerp;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_4
    :goto_0
    return p3

    :cond_5
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhe;->zzjw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p3

    .line 24
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    .line 25
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzi()Lcom/google/android/gms/internal/ads/zzcvb;

    move-result-object p3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    .line 26
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    .line 27
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p2

    .line 28
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzl(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzcvb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Ljava/util/concurrent/Executor;

    .line 29
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzm(Lcom/google/android/gms/internal/ads/zzdel;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 30
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzn()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object p2

    .line 31
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzm(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzcvb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzepw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzg:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzepw;-><init>(Lcom/google/android/gms/internal/ads/zzbhz;)V

    .line 32
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzk(Lcom/google/android/gms/internal/ads/zzepw;)Lcom/google/android/gms/internal/ads/zzcvb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdml;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdor;->zza:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-direct {p2, v0, v6}, Lcom/google/android/gms/internal/ads/zzdml;-><init>(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    .line 33
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzd(Lcom/google/android/gms/internal/ads/zzdml;)Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzj:Lcom/google/android/gms/internal/ads/zzdgl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcvx;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzcvx;-><init>(Lcom/google/android/gms/internal/ads/zzdeg;Lcom/google/android/gms/internal/ads/zzdgl;)V

    .line 34
    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzg(Lcom/google/android/gms/internal/ads/zzcvx;)Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzf:Landroid/view/ViewGroup;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzctu;-><init>(Landroid/view/ViewGroup;)V

    .line 35
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/zzcvb;->zze(Lcom/google/android/gms/internal/ads/zzctu;)Lcom/google/android/gms/internal/ads/zzcvb;

    .line 36
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcvb;->zza()Lcom/google/android/gms/internal/ads/zzcvc;

    move-result-object p2

    goto :goto_1

    .line 64
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzc:Lcom/google/android/gms/internal/ads/zzcma;

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzi()Lcom/google/android/gms/internal/ads/zzcvb;

    move-result-object p3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    .line 38
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    .line 39
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p2

    .line 40
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzl(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzcvb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Ljava/util/concurrent/Executor;

    .line 41
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzm(Lcom/google/android/gms/internal/ads/zzdel;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 42
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzf(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfff;->zze:Lcom/google/android/gms/internal/ads/zzert;

    .line 43
    invoke-virtual {p2, v5, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzf(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 44
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzg(Lcom/google/android/gms/internal/ads/zzdjm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 45
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzh(Lcom/google/android/gms/internal/ads/zzdbz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 46
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zza(Lcom/google/android/gms/internal/ads/zzdbf;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 47
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzb(Lcom/google/android/gms/internal/ads/zzdct;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 48
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzc(Lcom/google/android/gms/internal/ads/zzdbi;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 49
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 50
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzk(Lcom/google/android/gms/internal/ads/zzddw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzn()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object p2

    .line 51
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzm(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzcvb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzepw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzg:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzepw;-><init>(Lcom/google/android/gms/internal/ads/zzbhz;)V

    .line 52
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzk(Lcom/google/android/gms/internal/ads/zzepw;)Lcom/google/android/gms/internal/ads/zzcvb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdml;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdor;->zza:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-direct {p2, v0, v6}, Lcom/google/android/gms/internal/ads/zzdml;-><init>(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    .line 53
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzd(Lcom/google/android/gms/internal/ads/zzdml;)Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzj:Lcom/google/android/gms/internal/ads/zzdgl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcvx;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzcvx;-><init>(Lcom/google/android/gms/internal/ads/zzdeg;Lcom/google/android/gms/internal/ads/zzdgl;)V

    .line 54
    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzg(Lcom/google/android/gms/internal/ads/zzcvx;)Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzf:Landroid/view/ViewGroup;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzctu;-><init>(Landroid/view/ViewGroup;)V

    .line 55
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/zzcvb;->zze(Lcom/google/android/gms/internal/ads/zzctu;)Lcom/google/android/gms/internal/ads/zzcvb;

    .line 56
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcvb;->zza()Lcom/google/android/gms/internal/ads/zzcvc;

    move-result-object p2

    .line 57
    :goto_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 58
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcvc;->zze()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object v6

    .line 59
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzfoo;->zzi(I)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 60
    invoke-virtual {v6, p3}, Lcom/google/android/gms/internal/ads/zzfoo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 61
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfoo;

    :cond_7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzo:Lcom/google/android/gms/internal/ads/zzese;

    .line 62
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcvc;->zzc()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzcxj;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzl:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzffb;

    .line 64
    invoke-direct {p3, p0, v6, v3, p2}, Lcom/google/android/gms/internal/ads/zzffb;-><init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzcvc;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzl:Lcom/google/common/util/concurrent/ListenableFuture;

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

.method public final zzc()V
    .locals 9

    .line 1
    const-string v0, " already has a parent view. Removing its old parent."

    const-string v1, "Banner view provided from "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzl:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzl:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzctx;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzl:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzf:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zza()Landroid/view/View;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zza()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 9
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    const-string v6, ""

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzday;->zze()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 12
    :cond_0
    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x4e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 14
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zza()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwf;->zzq()Lcom/google/android/gms/internal/ads/zzdev;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    .line 18
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdev;->zza(Lcom/google/android/gms/internal/ads/zzerp;)Lcom/google/android/gms/internal/ads/zzdev;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfff;->zze:Lcom/google/android/gms/internal/ads/zzert;

    .line 19
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdev;->zzb(Lcom/google/android/gms/internal/ads/zzert;)Lcom/google/android/gms/internal/ads/zzdev;

    .line 20
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zza()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzo:Lcom/google/android/gms/internal/ads/zzese;

    if-eqz v1, :cond_3

    .line 21
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzese;->zzb(Ljava/lang/Object;)V

    .line 22
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    .line 24
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzffe;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzffe;-><init>(Lcom/google/android/gms/internal/ads/zzerp;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zzh()I

    move-result v0

    if-ltz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zzh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdeg;->zzd(I)V

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zzg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdeg;->zze(I)V

    goto :goto_2

    .line 32
    :cond_5
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zzg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdeg;->zzd(I)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 29
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfff;->zzt()V

    const-string v1, "Error occurred while refreshing the ad. Making a new ad request."

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdeg;->zzc()V

    goto :goto_2

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzl:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_7

    const-string v0, "Show timer went off but there is an ongoing ad request."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzm:Z

    goto :goto_2

    :cond_7
    const-string v0, "No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdeg;->zzc()V

    .line 32
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzd()Landroid/view/ViewGroup;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzf:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbhz;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzg:Lcom/google/android/gms/internal/ads/zzbhz;

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zze:Lcom/google/android/gms/internal/ads/zzert;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzert;->zza(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfjj;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzk:Lcom/google/android/gms/internal/ads/zzfjj;

    return-object v0
.end method

.method public final zzh()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzf:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzad(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzdeb;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdhd;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzj:Lcom/google/android/gms/internal/ads/zzdgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgl;->zzc()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdeg;->zzd(I)V

    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzj:Lcom/google/android/gms/internal/ads/zzdgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgl;->zzd()I

    move-result v0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdeg;->zze(I)V

    return-void
.end method

.method final synthetic zzl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzerp;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzm(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzerp;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzn()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfff;->zzt()V

    return-void
.end method

.method final synthetic zzo()Lcom/google/android/gms/internal/ads/zzdeg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzh:Lcom/google/android/gms/internal/ads/zzdeg;

    return-object v0
.end method

.method final synthetic zzp()Lcom/google/android/gms/internal/ads/zzfor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzi:Lcom/google/android/gms/internal/ads/zzfor;

    return-object v0
.end method

.method final synthetic zzq()Lcom/google/android/gms/internal/ads/zzdgl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzj:Lcom/google/android/gms/internal/ads/zzdgl;

    return-object v0
.end method

.method final synthetic zzr()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzm:Z

    return v0
.end method

.method final synthetic zzs(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzn:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method
