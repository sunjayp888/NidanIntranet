﻿using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Security.Policy;
using Nidan.Business.Models;
using Nidan.Entity;
using Nidan.Entity.Dto;
using System.Linq.Expressions;

namespace Nidan.Business.Interfaces
{
    public interface INidanBusinessService
    {
        //Create
        Personnel CreatePersonnel(int organisationId, Personnel personnel);
        Question CreateQuestion(int organisationId, Question personnel);
        Enquiry CreateEnquiry(int organisationId, Enquiry enquiry);
        Mobilization CreateMobilization(int organisationId, Mobilization mobilization);


        // Retrieve
        PagedResult<Event> RetrieveEvents(int organisationId, Expression<Func<Event, bool>> predicate, List<OrderBy> orderBy = null, Paging paging = null);
        Event RetrieveEvent(int organisationId, int eventId, Expression<Func<Event, bool>> predicate);
        AbsenceType RetrieveAbsenceType(int organisationId, int absenceTypeId);
        PagedResult<AbsenceType> RetrieveAbsenceTypes(int organisationId, List<OrderBy> orderBy, Paging paging);
        IEnumerable<Colour> RetrieveColours();
        Organisation RetrieveOrganisation(int organisationId);
        IAuthorisation RetrieveUserAuthorisation(string aspNetUserId);
        Permissions RetrievePersonnelPermissions(bool isAdmin, int organisationId, int userPersonnelId, int? personnelId = null);
        PagedResult<Personnel> RetrievePersonnel(int organisationId, List<OrderBy> orderBy, Paging paging);
        Personnel RetrievePersonnel(int organisationId, int id);
        PagedResult<PersonnelSearchField> RetrievePersonnelBySearchKeyword(int organisationId, string searchKeyword, List<OrderBy> orderBy = null, Paging paging = null);
        PagedResult<Question> RetrieveQuestions(int organisationId, Expression<Func<Question, bool>> predicate, List<OrderBy> orderBy = null, Paging paging = null);
        Question RetrieveQuestion(int organisationId, int questionId, Expression<Func<Question, bool>> predicate);
        List<EventActivityType> RetrieveActivityTypes(int organisationId); 
        PagedResult<Enquiry> RetrieveEnquiries(int organisationId, List<OrderBy> orderBy = null, Paging paging = null);
        Enquiry RetrieveEnquiry(int organisationId, int personnelId, Expression<Func<Enquiry, bool>> predicate);
        Mobilization RetrieveMobilization(int organisationId, int id);
        PagedResult<Mobilization> RetrieveMobilizations(int organisationId, List<OrderBy> orderBy = null, Paging paging = null);
        Mobilization RetrieveMobilization(int organisationId, int mobilizationId, Expression<Func<Mobilization, bool>> predicate);
        Enquiry RetrieveEnquiry(int organisationId, int id);

        // Update
        //void UploadPhoto(int organisationId, int personnelId, byte[] photo);
        Personnel UpdatePersonnel(int organisationId, Personnel personnel);
        Enquiry UpdateEnquiry(int organisationId, Enquiry enquiry);
        Mobilization UpdateMobilization(int organisationId, Mobilization mobilization);

        //Delete
        void DeletePersonnel(int organisationId, int personnelId);
        
    }
}
