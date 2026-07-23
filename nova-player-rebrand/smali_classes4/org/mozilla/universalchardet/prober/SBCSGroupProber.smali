.class public Lorg/mozilla/universalchardet/prober/SBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SBCSGroupProber.java"


# instance fields
.field private activeNum:I

.field private bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private probers:Ljava/util/List;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 66
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 68
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;-><init>()V

    .line 81
    new-instance v1, Lorg/mozilla/universalchardet/prober/HebrewProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;-><init>()V

    .line 82
    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 83
    new-instance v3, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 84
    invoke-virtual {v1, v2, v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 86
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->getConfidence()F

    .line 97
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 5

    .line 110
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    return v0

    .line 112
    :cond_0
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_1

    const v0, 0x3c23d70a    # 0.01f

    return v0

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 116
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    .line 122
    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    move v1, v3

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 3

    .line 140
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    iget-object p2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 145
    invoke-virtual {p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    .line 149
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_3

    .line 150
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 151
    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    .line 153
    :cond_3
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_1

    .line 154
    invoke-virtual {p3, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 155
    iget p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    if-gtz p3, :cond_1

    .line 157
    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 165
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 171
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 172
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    const/4 v2, 0x1

    .line 173
    invoke-virtual {v1, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 174
    iget v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 177
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method
