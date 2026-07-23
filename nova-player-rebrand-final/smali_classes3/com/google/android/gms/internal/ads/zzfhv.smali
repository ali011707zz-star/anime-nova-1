.class public final Lcom/google/android/gms/internal/ads/zzfhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzdct;
.implements Lcom/google/android/gms/internal/ads/zzdbi;
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzdbv;
.implements Lcom/google/android/gms/internal/ads/zzddw;
.implements Lcom/google/android/gms/internal/ads/zzfgg;
.implements Lcom/google/android/gms/internal/ads/zzdjm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkv;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzh:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzi:Lcom/google/android/gms/internal/ads/zzfhv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfkv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zza:Lcom/google/android/gms/internal/ads/zzfkv;

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->onAdMetadataChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhu;->zza:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzd(Lcom/google/android/gms/internal/ads/zzcag;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhb;-><init>(Lcom/google/android/gms/internal/ads/zzcag;)V

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhc;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfhc;-><init>(Lcom/google/android/gms/internal/ads/zzcag;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhd;-><init>(Lcom/google/android/gms/internal/ads/zzcag;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhe;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfhe;-><init>(Lcom/google/android/gms/internal/ads/zzcag;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhv;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfhi;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzfhi;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfgz;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgz;-><init>(I)V

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfha;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfha;-><init>(I)V

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdJ()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzdJ()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhq;->zza:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdQ()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzds()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzds()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zza:Lcom/google/android/gms/internal/ads/zzfkv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkv;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Lcom/google/android/gms/internal/ads/zzfhk;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhp;->zza:Lcom/google/android/gms/internal/ads/zzfhp;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdt()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzdt()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhm;->zza:Lcom/google/android/gms/internal/ads/zzfhm;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfho;->zza:Lcom/google/android/gms/internal/ads/zzfho;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhj;->zza:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzdu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzdu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhl;->zza:Lcom/google/android/gms/internal/ads/zzfhl;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zze()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhr;->zza:Lcom/google/android/gms/internal/ads/zzfhr;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhs;->zza:Lcom/google/android/gms/internal/ads/zzfhs;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzg()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhn;->zza:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfht;->zza:Lcom/google/android/gms/internal/ads/zzfht;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzcbg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcbc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhv;->zzj(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhf;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhg;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhv;->zzm(Lcom/google/android/gms/ads/internal/client/zzt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhh;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzffx;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzcam;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzcbh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzcah;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzfgg;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfhv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzi:Lcom/google/android/gms/internal/ads/zzfhv;

    return-void
.end method
