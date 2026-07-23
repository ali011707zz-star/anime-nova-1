.class public abstract Landroidx/work/WorkRequest$Builder;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/WorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field mBackoffCriteriaSet:Z

.field mId:Ljava/util/UUID;

.field mTags:Ljava/util/Set;

.field mWorkSpec:Landroidx/work/impl/model/WorkSpec;

.field mWorkerClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Landroidx/work/WorkRequest$Builder;->mBackoffCriteriaSet:Z

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->mTags:Ljava/util/Set;

    .line 130
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->mId:Ljava/util/UUID;

    .line 131
    iput-object p1, p0, Landroidx/work/WorkRequest$Builder;->mWorkerClass:Ljava/lang/Class;

    .line 132
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->mId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    return-void
.end method


# virtual methods
.method public final addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->mTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThis()Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Landroidx/work/WorkRequest;
    .locals 4

    .line 311
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->buildInternal()Landroidx/work/WorkRequest;

    move-result-object v0

    .line 312
    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 314
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 315
    invoke-virtual {v1}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v2

    if-nez v2, :cond_2

    .line 316
    :cond_0
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v2

    if-nez v2, :cond_2

    .line 317
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v2

    if-nez v2, :cond_2

    .line 318
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 320
    :goto_1
    iget-object v2, p0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-boolean v2, v2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    .line 321
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/WorkRequest$Builder;->mId:Ljava/util/UUID;

    .line 326
    new-instance v1, Landroidx/work/impl/model/WorkSpec;

    iget-object v2, p0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v1, v2}, Landroidx/work/impl/model/WorkSpec;-><init>(Landroidx/work/impl/model/WorkSpec;)V

    iput-object v1, p0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 327
    iget-object v2, p0, Landroidx/work/WorkRequest$Builder;->mId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    return-object v0
.end method

.method abstract buildInternal()Landroidx/work/WorkRequest;
.end method

.method abstract getThis()Landroidx/work/WorkRequest$Builder;
.end method

.method public final setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;
    .locals 1

    .line 186
    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 187
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThis()Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;
    .locals 1

    .line 198
    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 199
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThis()Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    return-object p1
.end method
